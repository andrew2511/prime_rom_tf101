.class final Lcom/asus/reader/bookconverter/Txt2Epub$2;
.super Ljava/util/HashMap;
.source "Txt2Epub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/bookconverter/Txt2Epub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string v0, "ISO-8859-1"

    const-string v1, "en"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "ISO-8859-2"

    const-string v1, "cs"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "ISO-8859-5"

    const-string v1, "sr"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "ISO-8859-6"

    const-string v1, "ar"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "ISO-8859-7"

    const-string v1, "el"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "ISO-8859-8"

    const-string v1, "iw"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "ISO-8859-9"

    const-string v1, "tr"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "ISO-8859-11"

    const-string v1, "th"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "WINDOWS-1251"

    const-string v1, "ru"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "WINDOWS-1252"

    const-string v1, "en"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "WINDOWS-1253"

    const-string v1, "el"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "WINDOWS-1255"

    const-string v1, "iw"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "KOI8-R"

    const-string v1, "ru"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "KOI8-U"

    const-string v1, "uk"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "CP1251"

    const-string v1, "be"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "MACCYRILLIC"

    const-string v1, "ru"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "IBM866"

    const-string v1, "ru"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "IBM855"

    const-string v1, "ru"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "ISO-2022-JP"

    const-string v1, "ja"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "SHIFT_JIS"

    const-string v1, "ja"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "EUC-JP"

    const-string v1, "ja"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "ISO-2022-KR"

    const-string v1, "ko"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "EUC-KR"

    const-string v1, "ko"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "ISO-2022-CN"

    const-string v1, "zh-CN"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "GB18030"

    const-string v1, "zh-CN"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "HZ-GB-2312"

    const-string v1, "zh-CN"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "GB2312"

    const-string v1, "zh-CN"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "GBK"

    const-string v1, "zh-CN"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "EUC-TW"

    const-string v1, "zh-TW"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "BIG5"

    const-string v1, "zh-TW"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/bookconverter/Txt2Epub$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method
