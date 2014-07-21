.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 351
    .local v1, li:Landroid/view/LayoutInflater;
    const v3, 0x7f0400d4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 356
    .end local v1           #li:Landroid/view/LayoutInflater;
    .local v2, v:Landroid/view/View;
    :goto_0
    const v3, 0x7f0d0222

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 357
    .local v0, b:Landroid/widget/Button;
    const v3, 0x7f080099

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 358
    new-instance v3, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1$1;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    const v3, 0x7f0d0223

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 366
    .restart local v0       #b:Landroid/widget/Button;
    const v3, 0x7f08009a

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 367
    new-instance v3, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1$2;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    return-object v2

    .line 353
    .end local v0           #b:Landroid/widget/Button;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    move-object v2, p1

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method
