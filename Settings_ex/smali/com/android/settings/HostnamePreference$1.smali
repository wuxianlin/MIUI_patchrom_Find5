.class Lcom/android/settings/HostnamePreference$1;
.super Ljava/lang/Object;
.source "HostnamePreference.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HostnamePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HostnamePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/HostnamePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/settings/HostnamePreference$1;->this$0:Lcom/android/settings/HostnamePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^-.a-zA-Z0-9]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
