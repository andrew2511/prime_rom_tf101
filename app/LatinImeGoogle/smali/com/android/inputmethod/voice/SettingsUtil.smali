.class public Lcom/android/inputmethod/voice/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .parameter "cr"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cr"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 83
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
