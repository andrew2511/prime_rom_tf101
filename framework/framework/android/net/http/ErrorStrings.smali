.class public Landroid/net/http/ErrorStrings;
.super Ljava/lang/Object;
.source "ErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResource(I)I
    .registers 5
    .parameter "errorCode"

    .prologue
    const v3, 0x1040102

    .line 45
    packed-switch p0, :pswitch_data_5e

    .line 95
    const-string v0, "Http"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using generic message for unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 96
    :goto_1f
    return v0

    .line 47
    :pswitch_20
    const v0, 0x1040101

    goto :goto_1f

    :pswitch_24
    move v0, v3

    .line 50
    goto :goto_1f

    .line 53
    :pswitch_26
    const v0, 0x1040103

    goto :goto_1f

    .line 56
    :pswitch_2a
    const v0, 0x1040104

    goto :goto_1f

    .line 59
    :pswitch_2e
    const v0, 0x1040105

    goto :goto_1f

    .line 62
    :pswitch_32
    const v0, 0x1040106

    goto :goto_1f

    .line 65
    :pswitch_36
    const v0, 0x1040107

    goto :goto_1f

    .line 68
    :pswitch_3a
    const v0, 0x1040108

    goto :goto_1f

    .line 71
    :pswitch_3e
    const v0, 0x1040109

    goto :goto_1f

    .line 74
    :pswitch_42
    const v0, 0x104010a

    goto :goto_1f

    .line 77
    :pswitch_46
    const v0, 0x1040008

    goto :goto_1f

    .line 80
    :pswitch_4a
    const v0, 0x104010b

    goto :goto_1f

    .line 83
    :pswitch_4e
    const v0, 0x1040007

    goto :goto_1f

    .line 86
    :pswitch_52
    const v0, 0x104010c

    goto :goto_1f

    .line 89
    :pswitch_56
    const v0, 0x104010d

    goto :goto_1f

    .line 92
    :pswitch_5a
    const v0, 0x104010e

    goto :goto_1f

    .line 45
    :pswitch_data_5e
    .packed-switch -0xf
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method public static getString(ILandroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "errorCode"
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p0}, Landroid/net/http/ErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
