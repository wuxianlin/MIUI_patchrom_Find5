package com.wuxianlin.stocksettings;

import org.cyanogenmod.hardware.TapToWake;

import miui.preference.PreferenceActivity;
import miui.preference.PreferenceFragment;
import miui.app.Activity;
import android.app.ActionBar;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;

public class MainActivity extends PreferenceActivity {

    private static final String KEY_TAP_TO_WAKE = "double_tap_wake_gesture";
    private CheckBoxPreference mTapToWake;
    @SuppressWarnings("deprecation")
	@Override
    protected void onCreate(Bundle savedInstanceState) {
    	initStyle();
        super.onCreate(savedInstanceState);
        ActionBar actionBar = getActionBar();
        if(actionBar != null) {
            actionBar.setTitle(R.string.app_name);
        }
        addPreferencesFromResource(R.xml.stocksettings);
        mTapToWake = (CheckBoxPreference) findPreference(KEY_TAP_TO_WAKE);
        mTapToWake.setEnabled(isTapToWakeSupported());
    }

    private void initStyle() {
        setTheme(miui.R.style.Theme_Light_Settings);
    }

	public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
			Preference preference) {
		if (preference == mTapToWake) {
            return TapToWake.setEnabled(mTapToWake.isChecked());
        }

		return super.onPreferenceTreeClick(preferenceScreen, preference);
	}
    private static boolean isTapToWakeSupported() {
        try {
            return TapToWake.isSupported();
        } catch (NoClassDefFoundError e) {
            // Hardware abstraction framework not installed
            return false;
        }
    }
    /**
     * Restore the properties associated with this preference on boot
     * @param ctx A valid context
     */
    public static void restore(Context ctx) {
        final SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(ctx);

        if (isTapToWakeSupported()) {
            final boolean enabled = prefs.getBoolean(KEY_TAP_TO_WAKE,
                    TapToWake.isEnabled());
            if (!TapToWake.setEnabled(enabled)) {
                //Log.e(TAG, "Failed to restore tap-to-wake settings.");
            } else {
                //Log.d(TAG, "Tap-to-wake settings restored.");
            }
        }
    }
}
