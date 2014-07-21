.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAction(Ljava/lang/Object;I)V
    .locals 0
    .parameter "info"
    .parameter "action"

    .prologue
    .line 43
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 44
    return-void
.end method

.method public static getActions(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 57
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    return v0
.end method

.method public static getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 61
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 62
    return-void
.end method

.method public static getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 65
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 66
    return-void
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 77
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 81
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 85
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 93
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static isCheckable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 101
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 105
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public static isClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 109
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 113
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isFocusable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 117
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public static isFocused(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 121
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public static isLongClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 125
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 129
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    return v0
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 133
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public static isSelected(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 137
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "className"

    .prologue
    .line 161
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "scrollable"

    .prologue
    .line 201
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 202
    return-void
.end method
