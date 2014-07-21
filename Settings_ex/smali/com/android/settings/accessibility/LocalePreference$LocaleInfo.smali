.class Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;
.super Ljava/lang/Object;
.source "LocalePreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/LocalePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field public label:Ljava/lang/String;

.field public locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .parameter "label"
    .parameter "locale"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->label:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->locale:Ljava/util/Locale;

    .line 138
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 147
    sget-object v0, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    check-cast p1, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->compareTo(Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/accessibility/LocalePreference$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method
