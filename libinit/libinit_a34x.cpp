#include <cstdlib>
#include <unistd.h>
#include <fcntl.h>
#include <android-base/logging.h>
#include <android-base/properties.h>

#include "property_service.h"
#include "log.h"
#include <string>
#include <fstream>
#include <iostream>

#define BOOTLOADER_PROPERTY "ro.bootloader"
#define LOGTAG_LIB          "libinit_a34x"

using namespace std;
using android::base::GetProperty;

struct model_names {
    string model_name;
};

static struct model_names models[] = {
    {"A346B"},
    {"A346E"},
    {"A346M"},
    {""}
};

static bool props_loaded = false;

namespace android {
namespace init {

void load_properties(const char *model)
{
    property_set("ro.product.system.model", model);
    property_set("ro.product.vendor.model", model);
    property_set("ro.product.odm.model", model);
    property_set("ro.product.model", model);
    property_set("ro.product.product.model", model);
    property_set("ro.product.system_ext.model", model);

    props_loaded = true;
}

void vendor_load_properties()
{
    string bootloader_name = GetProperty(BOOTLOADER_PROPERTY, "");

    if (bootloader_name != "")
    {
        LOG(INFO) << LOGTAG_LIB << ": your bootloader version: " << bootloader_name;
 
        for (int i = 0; models[i].model_name != ""; i++)
        {
            if (bootloader_name.find(models[i].model_name) != string::npos)
            {
                LOG(DEBUG) << LOGTAG_LIB << ": loading " << models[i].model_name << " model properties...";
                load_properties(models[i].model_name.c_str());
                break;
            }
        }

        if (! props_loaded)
            LOG(WARNING) << LOGTAG_LIB << ": information about B/E/M variants was not found in the bootloader version! The device could not be detected. Properties belonging to the A346B model code will be used.";
    }
    else
        LOG(WARNING) << LOGTAG_LIB << ": failed to get " << BOOTLOADER_PROPERTY << " property content. Properties belonging to the A346B model code will be used.";

}

}  // namespace init
}  // namespace android
