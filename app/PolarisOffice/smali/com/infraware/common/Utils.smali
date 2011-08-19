.class public Lcom/infraware/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static m_oToast:Landroid/widget/Toast;

.field private static s_oFontFaceKrToEnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    .line 33
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\uad74\ub9bc"

    const-string v2, "Gulim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\uad74\ub9bc\uccb4"

    const-string v2, "Gulimche"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\uad81\uc11c"

    const-string v2, "Gungsuh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\uad81\uc11c\uccb4"

    const-string v2, "Gungsuhche"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ub3cb\uc6c0"

    const-string v2, "Dotum"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ub3cb\uc6c0\uccb4"

    const-string v2, "Dotumche"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ub9d1\uc740 \uace0\ub515"

    const-string v2, "Malgun Gothic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ubc14\ud0d5"

    const-string v2, "Batang"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ubc14\ud0d5\uccb4"

    const-string v2, "Batangche"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\uc0c8\uad74\ub9bc"

    const-string v2, "Sae gulim"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ud734\uba3c\ub465\uadfc\ud5e4\ub4dc\ub77c\uc778"

    const-string v2, "Human Dungeun Headline"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ud734\uba3c\ub9e4\uc9c1\uccb4"

    const-string v2, "Human Magicche"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ud734\uba3c\ubaa8\uc74cT"

    const-string v2, "Human Moeum T"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ud734\uba3c\uc544\ubbf8\uccb4"

    const-string v2, "Human Amiche"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ud734\uba3c\uc5d1\uc2a4\ud3ec"

    const-string v2, "Human Expo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ud734\uba3c\uc61b\uccb4"

    const-string v2, "Human Yetche"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "\ud734\uba3c\ud3b8\uc9c0\uccb4"

    const-string v2, "Human Pyeonjiche"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\uacac\uace0\ub515"

    const-string v2, "HY Gyeon Gothic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\uacac\uba85\uc870"

    const-string v2, "HY Gyeon Myungjo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\uad81\uc11cB"

    const-string v2, "HY Gungsuh B"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\uadf8\ub798\ud53dM"

    const-string v2, "HY Graphic M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\ubaa9\uac01\ud30c\uc784B"

    const-string v2, "HY Mokgak Paim B"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\uc2e0\uba85\uc870"

    const-string v2, "HY Shin Myungjo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\uc595\uc740\uc0d8\ubb3cM"

    const-string v2, "HY Yateun Saemul M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\uc5fd\uc11cL"

    const-string v2, "HY Yeopseo L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\uc5fd\uc11cM"

    const-string v2, "HY Yeopseo M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\uc911\uace0\ub515"

    const-string v2, "HY Jung Gothic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    const-string v1, "HY\ud5e4\ub4dc\ub77c\uc778M"

    const-string v2, "HY Headline M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertIndexToColor(Landroid/content/Context;I)I
    .locals 3
    .parameter "a_oContext"
    .parameter "a_nIndex"

    .prologue
    const v2, 0x7f07001a

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, oResources:Landroid/content/res/Resources;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 79
    .local v0, nColorValue:I
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    return v0

    .line 81
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 85
    goto :goto_0

    .line 87
    :pswitch_2
    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 88
    goto :goto_0

    .line 90
    :pswitch_3
    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 91
    goto :goto_0

    .line 93
    :pswitch_4
    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 94
    goto :goto_0

    .line 96
    :pswitch_5
    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 97
    goto :goto_0

    .line 99
    :pswitch_6
    const v2, 0x7f070023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 100
    goto :goto_0

    .line 102
    :pswitch_7
    const v2, 0x7f070034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 103
    goto :goto_0

    .line 105
    :pswitch_8
    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 106
    goto :goto_0

    .line 108
    :pswitch_9
    const v2, 0x7f070035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 109
    goto :goto_0

    .line 111
    :pswitch_a
    const v2, 0x7f07003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_b
    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 115
    goto :goto_0

    .line 117
    :pswitch_c
    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 118
    goto :goto_0

    .line 120
    :pswitch_d
    const v2, 0x7f070030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 121
    goto :goto_0

    .line 123
    :pswitch_e
    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static createMessage(Landroid/os/Handler;ILjava/lang/String;I)Landroid/os/Message;
    .locals 2
    .parameter "a_oHandler"
    .parameter "a_nMsg"
    .parameter "a_szText"
    .parameter "a_nValue"

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v1, oBundle:Landroid/os/Bundle;
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 137
    return-object v0
.end method

.method public static createMessage(Landroid/os/Handler;ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;
    .locals 2
    .parameter "a_oHandler"
    .parameter "a_nMsg"
    .parameter "a_szText"
    .parameter "a_nValue"
    .parameter "a_szText2"
    .parameter "a_nValue2"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v1, oBundle:Landroid/os/Bundle;
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    invoke-virtual {v1, p4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 147
    return-object v0
.end method

.method public static createMessage(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;
    .locals 2
    .parameter "a_oHandler"
    .parameter "a_nMsg"
    .parameter "a_szText"
    .parameter "a_szValue"

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v1, oBundle:Landroid/os/Bundle;
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    return-object v0
.end method

.method public static getCurrentLocaleType(Landroid/content/res/Resources;)I
    .locals 1
    .parameter "res"

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/infraware/common/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getEnglishFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a_strKoreanFontName"

    .prologue
    .line 365
    sget-object v1, Lcom/infraware/common/Utils;->s_oFontFaceKrToEnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    .local v0, strEnglishFontName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 368
    move-object v0, p0

    .line 370
    :cond_0
    return-object v0
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "a_strFullPath"

    .prologue
    .line 264
    const-string v0, ""

    .line 265
    .local v0, fileName:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 266
    :cond_0
    const/4 v4, 0x0

    .line 290
    :goto_0
    return-object v4

    .line 268
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 269
    .local v2, nIndex:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 270
    move-object v0, p0

    .line 274
    :goto_1
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 275
    .local v1, nExtIndex:I
    if-lez v1, :cond_3

    .line 278
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, szExt:Ljava/lang/String;
    const-string v4, "docx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "doc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 280
    const-string v4, "xlsx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "xls"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 281
    const-string v4, "pptx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ppt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    const-string v4, "pps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 283
    const-string v4, "txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 284
    const-string v4, "pdf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 285
    const-string v4, "hwp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 287
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v3           #szExt:Ljava/lang/String;
    :cond_3
    move-object v4, v0

    .line 290
    goto :goto_0

    .line 272
    .end local v1           #nExtIndex:I
    :cond_4
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getLocaleType(Ljava/util/Locale;)I
    .locals 5
    .parameter "locale"

    .prologue
    .line 379
    const/16 v0, 0x22

    .line 380
    .local v0, nLocale:I
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, strLocaleCode:Ljava/lang/String;
    const/4 v0, 0x0

    .line 385
    if-eqz v2, :cond_0

    .line 387
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, strKey:Ljava/lang/String;
    const-string v3, "ko"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 391
    const/4 v0, 0x1

    .line 521
    .end local v1           #strKey:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 393
    .restart local v1       #strKey:Ljava/lang/String;
    :cond_1
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 395
    const-string v3, "zh_TW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 396
    const/16 v0, 0x1d

    goto :goto_0

    .line 397
    :cond_2
    const-string v3, "zh_HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 398
    const/16 v0, 0x1e

    goto :goto_0

    .line 400
    :cond_3
    const/16 v0, 0x1c

    goto :goto_0

    .line 402
    :cond_4
    const-string v3, "pt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 404
    const-string v3, "pt_BR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 405
    const/16 v0, 0x1f

    goto :goto_0

    .line 407
    :cond_5
    const/16 v0, 0x11

    goto :goto_0

    .line 409
    :cond_6
    const-string v3, "es"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 411
    const-string v3, "es_MX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 412
    const/16 v0, 0x20

    goto :goto_0

    .line 414
    :cond_7
    const/16 v0, 0x16

    goto :goto_0

    .line 416
    :cond_8
    const-string v3, "fr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 418
    const-string v3, "fr_CA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 419
    const/16 v0, 0x21

    goto :goto_0

    .line 420
    :cond_9
    const-string v3, "fr_CH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 421
    const/16 v0, 0x27

    goto :goto_0

    .line 422
    :cond_a
    const-string v3, "fr_BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 423
    const/16 v0, 0x28

    goto :goto_0

    .line 425
    :cond_b
    const/16 v0, 0x8

    goto :goto_0

    .line 427
    :cond_c
    const-string v3, "nl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    .line 429
    const-string v3, "nl_BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d

    .line 430
    const/16 v0, 0x23

    goto/16 :goto_0

    .line 432
    :cond_d
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 434
    :cond_e
    const-string v3, "de"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    .line 436
    const-string v3, "de_CH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    .line 437
    const/16 v0, 0x29

    goto/16 :goto_0

    .line 439
    :cond_f
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 441
    :cond_10
    const-string v3, "it"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_12

    .line 443
    const-string v3, "it_CH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_11

    .line 444
    const/16 v0, 0x2a

    goto/16 :goto_0

    .line 446
    :cond_11
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 448
    :cond_12
    const-string v3, "ru"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_14

    .line 450
    const-string v3, "ru_IL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_13

    .line 451
    const/16 v0, 0x2b

    goto/16 :goto_0

    .line 453
    :cond_13
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 455
    :cond_14
    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_18

    .line 457
    const-string v3, "en_US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_15

    .line 458
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 459
    :cond_15
    const-string v3, "en_AU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_16

    .line 460
    const/16 v0, 0x24

    goto/16 :goto_0

    .line 461
    :cond_16
    const-string v3, "en_CA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_17

    .line 462
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 463
    :cond_17
    const-string v3, "en_IE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 464
    const/16 v0, 0x26

    goto/16 :goto_0

    .line 466
    :cond_18
    const-string v3, "ja"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_19

    .line 467
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 468
    :cond_19
    const-string v3, "bg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a

    .line 469
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 470
    :cond_1a
    const-string v3, "hr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1b

    .line 471
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 472
    :cond_1b
    const-string v3, "cs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c

    .line 473
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 474
    :cond_1c
    const-string v3, "da"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1d

    .line 475
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 476
    :cond_1d
    const-string v3, "fi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1e

    .line 477
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 478
    :cond_1e
    const-string v3, "el_GR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1f

    .line 479
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 480
    :cond_1f
    const-string v3, "hu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_20

    .line 481
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 482
    :cond_20
    const-string v3, "is"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_21

    .line 483
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 484
    :cond_21
    const-string v3, "mk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22

    .line 485
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 486
    :cond_22
    const-string v3, "no"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_23

    .line 487
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 488
    :cond_23
    const-string v3, "pl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_24

    .line 489
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 490
    :cond_24
    const-string v3, "sr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_25

    .line 491
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 492
    :cond_25
    const-string v3, "sk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_26

    .line 493
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 494
    :cond_26
    const-string v3, "sl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    .line 495
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 496
    :cond_27
    const-string v3, "sv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_28

    .line 497
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 498
    :cond_28
    const-string v3, "tr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_29

    .line 499
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 500
    :cond_29
    const-string v3, "ar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2a

    .line 501
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 502
    :cond_2a
    const-string v3, "iw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2b

    .line 503
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 504
    :cond_2b
    const-string v3, "kk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2c

    .line 505
    const/16 v0, 0x2d

    goto/16 :goto_0

    .line 506
    :cond_2c
    const-string v3, "lt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2d

    .line 507
    const/16 v0, 0x2e

    goto/16 :goto_0

    .line 508
    :cond_2d
    const-string v3, "lv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2e

    .line 509
    const/16 v0, 0x2f

    goto/16 :goto_0

    .line 510
    :cond_2e
    const-string v3, "et"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2f

    .line 511
    const/16 v0, 0x30

    goto/16 :goto_0

    .line 512
    :cond_2f
    const-string v3, "vi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 513
    const/16 v0, 0x31

    goto/16 :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "a_szFullPath"

    .prologue
    const/4 v2, 0x0

    .line 235
    move-object v0, p0

    .line 236
    .local v0, szTmp:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 244
    :goto_0
    return-object v1

    .line 239
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v2

    .line 240
    goto :goto_0

    .line 243
    :cond_2
    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 244
    goto :goto_0
.end method

.method public static getSaveExtByDocType(I)Ljava/lang/String;
    .locals 1
    .parameter "a_nDocType"

    .prologue
    .line 296
    sparse-switch p0, :sswitch_data_0

    .line 314
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 300
    :sswitch_0
    const-string v0, "ppt"

    goto :goto_0

    .line 302
    :sswitch_1
    const-string v0, "doc"

    goto :goto_0

    .line 303
    :sswitch_2
    const-string v0, "hwp"

    goto :goto_0

    .line 304
    :sswitch_3
    const-string v0, "gul"

    goto :goto_0

    .line 306
    :sswitch_4
    const-string v0, "xls"

    goto :goto_0

    .line 307
    :sswitch_5
    const-string v0, "pdf"

    goto :goto_0

    .line 308
    :sswitch_6
    const-string v0, "htm"

    goto :goto_0

    .line 309
    :sswitch_7
    const-string v0, "html"

    goto :goto_0

    .line 310
    :sswitch_8
    const-string v0, "mht"

    goto :goto_0

    .line 311
    :sswitch_9
    const-string v0, "mhtml"

    goto :goto_0

    .line 312
    :sswitch_a
    const-string v0, "txt"

    goto :goto_0

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xc -> :sswitch_a
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public static hideIme(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .parameter "context"
    .parameter "windowToken"

    .prologue
    .line 69
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 70
    .local v0, Imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    :cond_0
    return-void
.end method

.method public static hideInputLimitationToast()V
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 335
    :cond_0
    return-void
.end method

.method public static isKoreanLocale(Landroid/app/Activity;)Z
    .locals 4
    .parameter "a_oActivity"

    .prologue
    const/4 v3, 0x0

    .line 353
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 355
    .local v0, locale:Ljava/util/Locale;
    if-nez v0, :cond_0

    move v1, v3

    .line 361
    :goto_0
    return v1

    .line 358
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 361
    goto :goto_0
.end method

.method public static popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .parameter "a_oContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p1, a_nMaxLength:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    .line 339
    const v1, 0x7f0a0311

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, strMessage:Ljava/lang/String;
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 341
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    .line 348
    :goto_0
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 349
    return-void

    .line 344
    :cond_0
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 346
    :cond_1
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "a_oContext"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "TT;TT;)V"
        }
    .end annotation

    .prologue
    .local p1, a_nMin:Ljava/lang/Object;,"TT;"
    .local p2, a_nMax:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x0

    .line 319
    const v1, 0x7f0a0324

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, strMessage:Ljava/lang/String;
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 321
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    .line 329
    :goto_0
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 330
    return-void

    .line 325
    :cond_0
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 327
    :cond_1
    sget-object v1, Lcom/infraware/common/Utils;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static save2003HelperDialog(Lcom/infraware/common/UxDocEditorBase;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V
    .locals 6
    .parameter "a_oEditorActivity"
    .parameter "a_oCmdListener"

    .prologue
    const/4 v5, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/infraware/common/UxDocEditorBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, szTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/common/UxDocEditorBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0368

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, szMsg:Ljava/lang/String;
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog2Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 253
    .local v0, oMessageDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 255
    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Save_to_2003_format_Confirm:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v3, v5}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 256
    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Save_to_2003_format_No:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v3, v5}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 257
    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 258
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 259
    return-void
.end method

.method public static sendThumbnailMessage(Landroid/os/Handler;IILandroid/graphics/Bitmap;)V
    .locals 3
    .parameter "a_oHandler"
    .parameter "a_nMsg"
    .parameter "a_nIndex"
    .parameter "a_oThumbnail"

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 226
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v1, oBundle:Landroid/os/Bundle;
    const-string v2, "PageIndex"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const-string v2, "Thumbnail"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static sendUserMessage(Landroid/os/Handler;ILjava/lang/String;I)V
    .locals 2
    .parameter "a_oHandler"
    .parameter "a_nMsg"
    .parameter "a_szText"
    .parameter "a_nValue"

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 164
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v1, oBundle:Landroid/os/Bundle;
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static sendUserMessage(Landroid/os/Handler;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "a_oHandler"
    .parameter "a_nMsg"
    .parameter "a_szText"
    .parameter "a_nValue"
    .parameter "a_szText2"
    .parameter "a_nValue2"

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 199
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v1, oBundle:Landroid/os/Bundle;
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-virtual {v1, p4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static sendUserMessage(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "a_oHandler"
    .parameter "a_nMsg"
    .parameter "a_szText"
    .parameter "a_szValue"

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 174
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v1, oBundle:Landroid/os/Bundle;
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static sendUserMessageDelayed(Landroid/os/Handler;ILjava/lang/String;II)V
    .locals 4
    .parameter "a_oHandler"
    .parameter "a_nMsg"
    .parameter "a_szText"
    .parameter "a_szValue"
    .parameter "a_nDelay"

    .prologue
    .line 183
    if-nez p0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 187
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, oBundle:Landroid/os/Bundle;
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 190
    int-to-long v2, p4

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static showIme(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    .line 64
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 65
    .local v0, Imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 66
    return-void
.end method
