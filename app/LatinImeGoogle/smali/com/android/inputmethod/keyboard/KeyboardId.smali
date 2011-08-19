.class public Lcom/android/inputmethod/keyboard/KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardId.java"


# instance fields
.field public final mClobberSettingsKey:Z

.field public final mColorScheme:I

.field public final mEnableShiftLock:Z

.field public final mF2KeyMode:I

.field public final mHasSettingsKey:Z

.field public final mHasVoiceKey:Z

.field private final mHashCode:I

.field public final mImeAction:I

.field public final mLocale:Ljava/util/Locale;

.field public final mMode:I

.field public final mOrientation:I

.field public final mPasswordInput:Z

.field public final mVoiceKeyEnabled:Z

.field public final mWebInput:Z

.field public final mXmlId:I

.field public final mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/Locale;IILandroid/view/inputmethod/EditorInfo;ZIZZZZ)V
    .locals 7
    .parameter "xmlName"
    .parameter "xmlId"
    .parameter "colorScheme"
    .parameter "locale"
    .parameter "orientation"
    .parameter "mode"
    .parameter "attribute"
    .parameter "hasSettingsKey"
    .parameter "f2KeyMode"
    .parameter "clobberSettingsKey"
    .parameter "voiceKeyEnabled"
    .parameter "hasVoiceKey"
    .parameter "enableShiftLock"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p7, :cond_1

    iget v4, p7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move v3, v4

    .line 68
    .local v3, inputType:I
    :goto_0
    if-eqz p7, :cond_2

    iget v4, p7, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move v2, v4

    .line 69
    .local v2, imeOptions:I
    :goto_1
    iput-object p4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    .line 70
    iput p5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    .line 71
    iput p6, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    .line 72
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    .line 73
    iput p3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mColorScheme:I

    .line 74
    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils;->isWebInputType(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWebInput:Z

    .line 75
    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils;->isPasswordInputType(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils;->isVisiblePasswordInputType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    .line 77
    iput-boolean p8, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    .line 78
    move/from16 v0, p9

    move-object v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    .line 79
    move/from16 v0, p10

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    .line 80
    move/from16 v0, p11

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mVoiceKeyEnabled:Z

    .line 81
    move/from16 v0, p12

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasVoiceKey:Z

    .line 84
    const v4, 0x400000ff

    and-int/2addr v4, v2

    iput v4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    .line 86
    move/from16 v0, p13

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mEnableShiftLock:Z

    .line 87
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlName:Ljava/lang/String;

    .line 89
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWebInput:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-boolean v6, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    iget v6, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHashCode:I

    .line 105
    return-void

    .line 67
    .end local v2           #imeOptions:I
    .end local v3           #inputType:I
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    goto/16 :goto_0

    .line 68
    .restart local v3       #inputType:I
    :cond_2
    const/4 v4, 0x0

    move v2, v4

    goto/16 :goto_1

    .line 75
    .restart local v2       #imeOptions:I
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public static colorSchemeName(I)Ljava/lang/String;
    .locals 1
    .parameter "colorScheme"

    .prologue
    .line 187
    packed-switch p0, :pswitch_data_0

    .line 191
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    const-string v0, "white"

    goto :goto_0

    .line 189
    :pswitch_1
    const-string v0, "black"

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static f2KeyModeName(I)Ljava/lang/String;
    .locals 1
    .parameter "f2KeyMode"

    .prologue
    .line 217
    packed-switch p0, :pswitch_data_0

    .line 223
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 218
    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    .line 219
    :pswitch_1
    const-string v0, "settings"

    goto :goto_0

    .line 220
    :pswitch_2
    const-string v0, "shortcutIme"

    goto :goto_0

    .line 221
    :pswitch_3
    const-string v0, "shortcutImeOrSettings"

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static imeOptionsName(I)Ljava/lang/String;
    .locals 4
    .parameter "imeOptions"

    .prologue
    .line 195
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    const/4 v2, 0x0

    .line 212
    :goto_0
    return-object v2

    .line 196
    :cond_0
    and-int/lit16 v1, p0, 0xff

    .line 198
    .local v1, actionNo:I
    packed-switch v1, :pswitch_data_0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionUnknown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, action:Ljava/lang/String;
    :goto_1
    const/high16 v2, 0x4000

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flagNoEnterAction|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 199
    .end local v0           #action:Ljava/lang/String;
    :pswitch_0
    const-string v0, "actionUnspecified"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 200
    .end local v0           #action:Ljava/lang/String;
    :pswitch_1
    const-string v0, "actionNone"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 201
    .end local v0           #action:Ljava/lang/String;
    :pswitch_2
    const-string v0, "actionGo"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 202
    .end local v0           #action:Ljava/lang/String;
    :pswitch_3
    const-string v0, "actionSearch"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 203
    .end local v0           #action:Ljava/lang/String;
    :pswitch_4
    const-string v0, "actionSend"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 204
    .end local v0           #action:Ljava/lang/String;
    :pswitch_5
    const-string v0, "actionDone"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 205
    .end local v0           #action:Ljava/lang/String;
    :pswitch_6
    const-string v0, "actionNext"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    .line 206
    .end local v0           #action:Ljava/lang/String;
    :pswitch_7
    const-string v0, "actionPrevious"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 212
    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static modeName(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 175
    packed-switch p0, :pswitch_data_0

    .line 183
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 176
    :pswitch_0
    const-string v0, "text"

    goto :goto_0

    .line 177
    :pswitch_1
    const-string v0, "url"

    goto :goto_0

    .line 178
    :pswitch_2
    const-string v0, "email"

    goto :goto_0

    .line 179
    :pswitch_3
    const-string v0, "im"

    goto :goto_0

    .line 180
    :pswitch_4
    const-string v0, "phone"

    goto :goto_0

    .line 181
    :pswitch_5
    const-string v0, "number"

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 133
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mColorScheme:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mColorScheme:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mWebInput:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWebInput:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mVoiceKeyEnabled:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mVoiceKeyEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasVoiceKey:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasVoiceKey:Z

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mEnableShiftLock:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEnableShiftLock:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 129
    instance-of v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/inputmethod/keyboard/KeyboardId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXmlId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHashCode:I

    return v0
.end method

.method public isAlphabetKeyboard()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050008

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberKeyboard()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneKeyboard()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 156
    const-string v0, "[%s.xml %s %s %s %s %s %s%s%s%s%s%s%s%s]"

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlName:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v3, v4, :cond_0

    const-string v3, "port"

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->imeOptionsName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mColorScheme:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->colorSchemeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->f2KeyModeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-eqz v3, :cond_1

    const-string v3, " clobberSettingsKey"

    :goto_1
    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWebInput:Z

    if-eqz v3, :cond_2

    const-string v3, " webInput"

    :goto_2
    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    if-eqz v3, :cond_3

    const-string v3, " passwordInput"

    :goto_3
    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    if-eqz v3, :cond_4

    const-string v3, " hasSettingsKey"

    :goto_4
    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mVoiceKeyEnabled:Z

    if-eqz v3, :cond_5

    const-string v3, " voiceKeyEnabled"

    :goto_5
    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasVoiceKey:Z

    if-eqz v3, :cond_6

    const-string v3, " hasVoiceKey"

    :goto_6
    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mEnableShiftLock:Z

    if-eqz v3, :cond_7

    const-string v3, " enableShiftLock"

    :goto_7
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "land"

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_1

    :cond_2
    const-string v3, ""

    goto :goto_2

    :cond_3
    const-string v3, ""

    goto :goto_3

    :cond_4
    const-string v3, ""

    goto :goto_4

    :cond_5
    const-string v3, ""

    goto :goto_5

    :cond_6
    const-string v3, ""

    goto :goto_6

    :cond_7
    const-string v3, ""

    goto :goto_7
.end method
