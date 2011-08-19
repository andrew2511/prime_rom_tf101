.class public final Lcom/nuance/xt9/input/NativeChineseInput;
.super Ljava/lang/Object;
.source "NativeChineseInput.java"


# static fields
.field public static final CHINESE_INPUT_MODE_BPMF:I = 0x1

.field public static final CHINESE_INPUT_MODE_CANGJIE:I = 0x3

.field public static final CHINESE_INPUT_MODE_PINYIN:I = 0x0

.field public static final CHINESE_INPUT_MODE_QUICK_CANGJIE:I = 0x4

.field public static final CHINESE_INPUT_MODE_STROKE:I = 0x2

.field public static final CHINESE_MOHU_PAIR_AN_ANG:I = 0x40

.field public static final CHINESE_MOHU_PAIR_C_CH:I = 0x2

.field public static final CHINESE_MOHU_PAIR_EN_ENG:I = 0x80

.field public static final CHINESE_MOHU_PAIR_F_H:I = 0x20

.field public static final CHINESE_MOHU_PAIR_IN_ING:I = 0x100

.field public static final CHINESE_MOHU_PAIR_N_L:I = 0x8

.field public static final CHINESE_MOHU_PAIR_R_L:I = 0x10

.field public static final CHINESE_MOHU_PAIR_S_SH:I = 0x4

.field public static final CHINESE_MOHU_PAIR_Z_ZH:I = 0x1

.field public static final CHINESE_MOHU_PINYIN:I = 0x65

.field public static final CHINESE_NAME_INPUT:I = 0x64

.field public static final CHINESE_NAME_INPUT_OFF:I = 0x0

.field public static final CHINESE_NAME_INPUT_ON:I = 0x1

.field public static final CHINESE_PHONETIC_TONE1:I = 0x1b

.field public static final CHINESE_PHONETIC_TONE2:I = 0x1c

.field public static final CHINESE_PHONETIC_TONE3:I = 0x1d

.field public static final CHINESE_PHONETIC_TONE4:I = 0x1e

.field public static final CHINESE_PHONETIC_TONE5:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native xt9input_chinese_addDelimiter(I)Z
.end method

.method public static native xt9input_chinese_addTone(II)Z
.end method

.method public static native xt9input_chinese_addWordToUserDictionary(I[CI[CI)Z
.end method

.method public static native xt9input_chinese_breakContext(I)Z
.end method

.method public static native xt9input_chinese_clearAllKeys(I)Z
.end method

.method public static native xt9input_chinese_clearKey(I)Z
.end method

.method public static native xt9input_chinese_create(Ljava/lang/String;)I
.end method

.method public static native xt9input_chinese_cycleTone(I)Z
.end method

.method public static native xt9input_chinese_deleteUserDictionaryWord(I[CI)Z
.end method

.method public static native xt9input_chinese_destroy(I)V
.end method

.method public static native xt9input_chinese_finish(I)V
.end method

.method public static native xt9input_chinese_getActivePrefixIndex(I)I
.end method

.method public static native xt9input_chinese_getActiveSpellIndex(I)I
.end method

.method public static native xt9input_chinese_getInputMode(I)I
.end method

.method public static native xt9input_chinese_getKeyCount(I)I
.end method

.method public static native xt9input_chinese_getPrefix(II[C[II)Z
.end method

.method public static native xt9input_chinese_getPrefixCount(I)I
.end method

.method public static native xt9input_chinese_getSelection(I[C[II)Z
.end method

.method public static native xt9input_chinese_getSpell(II[C[II)Z
.end method

.method public static native xt9input_chinese_getUserDictionaryWord(II[C[II)Z
.end method

.method public static native xt9input_chinese_getWord(II[C[II)Z
.end method

.method public static native xt9input_chinese_isPrefixBufferActive(I)Z
.end method

.method public static native xt9input_chinese_processKey(III)Z
.end method

.method public static native xt9input_chinese_resetUserDictionary(I)Z
.end method

.method public static native xt9input_chinese_selectWord(II[C[II)Z
.end method

.method public static native xt9input_chinese_setActivePrefixIndex(II)Z
.end method

.method public static native xt9input_chinese_setActiveSpellIndex(II)Z
.end method

.method public static native xt9input_chinese_setAttribute(III)Z
.end method

.method public static native xt9input_chinese_setContext(I[CI)Z
.end method

.method public static native xt9input_chinese_setInputMode(II)Z
.end method

.method public static native xt9input_chinese_setLanguage(II)Z
.end method

.method public static native xt9input_chinese_start(I)Z
.end method

.method public static native xt9input_chinese_udbAdd(I[CI[CI)Z
.end method

.method public static native xt9input_chinese_udbCount(I)I
.end method

.method public static native xt9input_chinese_udbDelete(I[CI)Z
.end method

.method public static native xt9input_chinese_udbGetNext(II[C[II[C[II)Z
.end method

.method public static native xt9input_chinese_udbReset(I)V
.end method
