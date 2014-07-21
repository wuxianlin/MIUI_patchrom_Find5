.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static setFromIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "fromIndex"

    .prologue
    .line 151
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 152
    return-void
.end method

.method public static setItemCount(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "itemCount"

    .prologue
    .line 159
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 160
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "record"
    .parameter "scrollable"

    .prologue
    .line 183
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 184
    return-void
.end method

.method public static setToIndex(Ljava/lang/Object;I)V
    .locals 0
    .parameter "record"
    .parameter "toIndex"

    .prologue
    .line 191
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 192
    return-void
.end method
