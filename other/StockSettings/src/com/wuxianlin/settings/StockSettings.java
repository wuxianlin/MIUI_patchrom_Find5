/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.wuxianlin.settings;
import android.app.ActivityManagerNative;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.PreferenceActivity;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.Surface;
import android.view.MenuItem;
import android.app.ActionBar;

import java.util.ArrayList;

public class StockSettings extends PreferenceActivity{
    private static final String LOG_TAG = "StockSettings";

    private static final String ADVANCED_REBOOT = "advanced_reboot";

    private static final String SELECT_RUNTIME_KEY = "select_runtime";
    private static final String SELECT_RUNTIME_PROPERTY = "persist.sys.dalvik.vm.lib";

    private CheckBoxPreference mAdvancedReboot;

    public void onCreate(Bundle savedInstanceState) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mAdvancedReboot = (CheckBoxPreference) findPreference(ADVANCED_REBOOT);
        updateState();
    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mAdvancedReboot) {
            /*if (mAdvancedReboot.isChecked()) {
                Settings.Secure.putInt(getContentResolver(), "advanced_reboot", 1);
            } else {
                Settings.Secure.putInt(getContentResolver(), "advanced_reboot", 0);
            }*/
            Settings.Secure.putInt(getContentResolver(),
            		"advanced_reboot",
                    mAdvancedReboot.isChecked() ? 1 : 0);
        }
        else {
            //do nothing
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            finish();
            return true;

        default:
            return super.onOptionsItemSelected(item);
        }
    }

    private void updateState() {
        mAdvancedReboot.setChecked(Settings.Secure.getInt(getContentResolver(),
        		"advanced_reboot", 0) != 0);
    }
}


