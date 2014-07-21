.class Lcom/android/settings/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;

.field final synthetic val$activity:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;Landroid/preference/PreferenceActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$2;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$2;->val$activity:Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0807b4

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method
