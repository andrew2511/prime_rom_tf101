.class public Lcom/android/contacts/util/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivatedBackground(Landroid/content/res/Resources$Theme;)I
    .locals 1
    .parameter "theme"

    .prologue
    .line 30
    const v0, 0x10102fd

    invoke-static {p0, v0}, Lcom/android/contacts/util/ThemeUtils;->getAttribute(Landroid/content/res/Resources$Theme;I)I

    move-result v0

    return v0
.end method

.method public static getAttribute(Landroid/content/res/Resources$Theme;I)I
    .locals 2
    .parameter "theme"
    .parameter "attrId"

    .prologue
    .line 14
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 15
    .local v0, outValue:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 16
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static getSelectableItemBackground(Landroid/content/res/Resources$Theme;)I
    .locals 1
    .parameter "theme"

    .prologue
    .line 23
    const v0, 0x101030e

    invoke-static {p0, v0}, Lcom/android/contacts/util/ThemeUtils;->getAttribute(Landroid/content/res/Resources$Theme;I)I

    move-result v0

    return v0
.end method
