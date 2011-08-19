.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$FormatToken;,
        Ljava/util/Formatter$CachedDecimalFormat;,
        Ljava/util/Formatter$BigDecimalLayoutForm;
    }
.end annotation


# static fields
.field private static final ZEROS:[C

.field private static final cachedDecimalFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Formatter$CachedDecimalFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static lineSeparator:Ljava/lang/String;


# instance fields
.field private arg:Ljava/lang/Object;

.field private closed:Z

.field private formatToken:Ljava/util/Formatter$FormatToken;

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private localeData:Llibcore/icu/LocaleData;

.field private out:Ljava/lang/Appendable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 529
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Ljava/util/Formatter;->ZEROS:[C

    .line 586
    new-instance v0, Ljava/util/Formatter$1;

    invoke-direct {v0}, Ljava/util/Formatter$1;-><init>()V

    sput-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    return-void

    .line 529
    nop

    :array_12
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 611
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 769
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;)V

    .line 770
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter "file"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 799
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 9
    .parameter "file"
    .parameter "csn"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/Formatter;->closed:Z

    .line 827
    const/4 v1, 0x0

    .line 829
    .local v1, fout:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_c} :catch_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_c} :catch_21

    .line 830
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_18} :catch_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_18} :catch_27

    .line 839
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 840
    return-void

    .line 831
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    :catch_1b
    move-exception v3

    move-object v0, v3

    .line 832
    .local v0, e:Ljava/lang/RuntimeException;
    :goto_1d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 833
    throw v0

    .line 834
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 835
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_23
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 836
    throw v0

    .line 834
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_27
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_23

    .line 831
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    goto :goto_1d
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "os"

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 854
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 855
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 856
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "os"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 874
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .parameter "os"
    .parameter "csn"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 891
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 892
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 893
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 3
    .parameter "ps"

    .prologue
    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 909
    if-nez p1, :cond_e

    .line 910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 912
    :cond_e
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 913
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 914
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 625
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 626
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .registers 4
    .parameter "a"
    .parameter "l"

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    .line 655
    if-nez p1, :cond_12

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    .line 660
    :goto_f
    iput-object p2, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 661
    return-void

    .line 658
    :cond_12
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    goto :goto_f
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 685
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;)V

    .line 687
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "fileName"
    .parameter "csn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 714
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .parameter "fileName"
    .parameter "csn"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 745
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 640
    return-void
.end method

.method private appendLocalized(Ljava/lang/StringBuilder;JI)V
    .registers 11
    .parameter "result"
    .parameter "value"
    .parameter "width"

    .prologue
    const/16 v5, 0x30

    .line 2010
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2011
    .local v1, paddingIndex:I
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v3, v4, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 2012
    .local v3, zeroDigit:C
    if-ne v3, v5, :cond_19

    .line 2013
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2017
    :goto_f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v2, p4, v4

    .line 2018
    .local v2, zeroCount:I
    if-gtz v2, :cond_25

    .line 2028
    :cond_18
    :goto_18
    return-void

    .line 2015
    .end local v2           #zeroCount:I
    :cond_19
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 2021
    .restart local v2       #zeroCount:I
    :cond_25
    if-ne v3, v5, :cond_2e

    .line 2022
    sget-object v4, Ljava/util/Formatter;->ZEROS:[C

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v4, v5, v2}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 2024
    :cond_2e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    if-ge v0, v2, :cond_18

    .line 2025
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2024
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method private appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z
    .registers 15
    .parameter "result"
    .parameter "conversion"
    .parameter "calendar"

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0x20

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1869
    packed-switch p2, :pswitch_data_24a

    :pswitch_a
    move v4, v10

    .line 2002
    :goto_b
    return v4

    .line 1871
    :pswitch_c
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v4, v4, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    .line 1872
    goto :goto_b

    .line 1874
    :pswitch_1c
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v4, v4, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    .line 1875
    goto :goto_b

    .line 1877
    :pswitch_2c
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v4, v4, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    .line 1878
    goto :goto_b

    .line 1880
    :pswitch_3b
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v4, v4, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    .line 1881
    goto :goto_b

    .line 1883
    :pswitch_4a
    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1884
    goto :goto_b

    .line 1886
    :pswitch_56
    const/16 v4, 0x6d

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1887
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1888
    const/16 v4, 0x64

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1889
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1890
    const/16 v4, 0x79

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move v4, v8

    .line 1891
    goto :goto_b

    .line 1893
    :pswitch_71
    const/16 v4, 0x59

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1894
    const/16 v4, 0x2d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1895
    const/16 v4, 0x6d

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1896
    const/16 v4, 0x2d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1897
    const/16 v4, 0x64

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move v4, v8

    .line 1898
    goto :goto_b

    .line 1900
    :pswitch_8c
    const/16 v4, 0xb

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1901
    goto/16 :goto_b

    .line 1903
    :pswitch_99
    const/16 v4, 0xa

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1904
    goto/16 :goto_b

    .line 1906
    :pswitch_aa
    const/16 v4, 0xe

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-direct {p0, p1, v4, v5, v6}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1907
    goto/16 :goto_b

    .line 1909
    :pswitch_b8
    const/16 v4, 0xc

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1910
    goto/16 :goto_b

    .line 1912
    :pswitch_c5
    const/16 v4, 0xe

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    const/16 v6, 0x9

    invoke-direct {p0, p1, v4, v5, v6}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1913
    goto/16 :goto_b

    .line 1915
    :pswitch_d8
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1916
    goto/16 :goto_b

    .line 1918
    :pswitch_e2
    const/16 v4, 0x48

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1919
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1920
    const/16 v4, 0x4d

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move v4, v8

    .line 1921
    goto/16 :goto_b

    .line 1923
    :pswitch_f2
    const/16 v4, 0xd

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1924
    goto/16 :goto_b

    .line 1926
    :pswitch_ff
    const/16 v4, 0x48

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1927
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1928
    const/16 v4, 0x4d

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1929
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1930
    const/16 v4, 0x53

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move v4, v8

    .line 1931
    goto/16 :goto_b

    .line 1933
    :pswitch_117
    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x4

    invoke-direct {p0, p1, v4, v5, v6}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1934
    goto/16 :goto_b

    .line 1936
    :pswitch_123
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1937
    .local v3, timeZone:Ljava/util/TimeZone;
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    iget-object v5, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4, v10, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    .line 1939
    goto/16 :goto_b

    .line 1941
    .end local v3           #timeZone:Ljava/util/TimeZone;
    :pswitch_13b
    const/16 v4, 0x61

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1942
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1943
    const/16 v4, 0x62

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1944
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1945
    const/16 v4, 0x64

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1946
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1947
    const/16 v4, 0x54

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1948
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1949
    const/16 v4, 0x5a

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1950
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1951
    const/16 v4, 0x59

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move v4, v8

    .line 1952
    goto/16 :goto_b

    .line 1954
    :pswitch_16b
    const/4 v4, 0x5

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1955
    goto/16 :goto_b

    .line 1957
    :pswitch_177
    const/4 v4, 0x5

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1958
    goto/16 :goto_b

    .line 1960
    :pswitch_183
    const/4 v4, 0x6

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-direct {p0, p1, v4, v5, v6}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1961
    goto/16 :goto_b

    .line 1963
    :pswitch_190
    const/16 v4, 0xb

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1964
    goto/16 :goto_b

    .line 1966
    :pswitch_19d
    const/16 v4, 0xa

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1967
    goto/16 :goto_b

    .line 1970
    :pswitch_1ae
    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1971
    goto/16 :goto_b

    .line 1973
    :pswitch_1bb
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v4, v4, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v5, 0x9

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    .line 1974
    goto/16 :goto_b

    .line 1976
    :pswitch_1d3
    const/16 v4, 0x49

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1977
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1978
    const/16 v4, 0x4d

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1979
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1980
    const/16 v4, 0x53

    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    .line 1981
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1982
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v4, v4, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v5, 0x9

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    .line 1983
    goto/16 :goto_b

    .line 1985
    :pswitch_1fd
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1986
    goto/16 :goto_b

    .line 1988
    :pswitch_20a
    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 1989
    goto/16 :goto_b

    .line 1991
    :pswitch_217
    const/16 v4, 0xf

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v0, v4

    .line 1992
    .local v0, offset:J
    const/16 v2, 0x2b

    .line 1993
    .local v2, sign:C
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_230

    .line 1994
    const/16 v2, 0x2d

    .line 1995
    neg-long v0, v0

    .line 1997
    :cond_230
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1998
    const-wide/32 v4, 0x36ee80

    div-long v4, v0, v4

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    .line 1999
    const-wide/32 v4, 0x36ee80

    rem-long v4, v0, v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    move v4, v8

    .line 2000
    goto/16 :goto_b

    .line 1869
    :pswitch_data_24a
    .packed-switch 0x41
        :pswitch_c
        :pswitch_2c
        :pswitch_4a
        :pswitch_56
        :pswitch_a
        :pswitch_71
        :pswitch_a
        :pswitch_8c
        :pswitch_99
        :pswitch_a
        :pswitch_a
        :pswitch_aa
        :pswitch_b8
        :pswitch_c5
        :pswitch_a
        :pswitch_a
        :pswitch_d8
        :pswitch_e2
        :pswitch_f2
        :pswitch_ff
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_117
        :pswitch_123
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1c
        :pswitch_3b
        :pswitch_13b
        :pswitch_16b
        :pswitch_177
        :pswitch_a
        :pswitch_a
        :pswitch_3b
        :pswitch_a
        :pswitch_183
        :pswitch_190
        :pswitch_19d
        :pswitch_1ae
        :pswitch_a
        :pswitch_a
        :pswitch_1bb
        :pswitch_a
        :pswitch_1d3
        :pswitch_1fd
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_20a
        :pswitch_217
    .end packed-switch
.end method

.method private badArgumentType()Ljava/util/IllegalFormatConversionException;
    .registers 4

    .prologue
    .line 1510
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private checkNotClosed()V
    .registers 2

    .prologue
    .line 917
    iget-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    if-eqz v0, :cond_a

    .line 918
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0

    .line 920
    :cond_a
    return-void
.end method

.method private varargs doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 24
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1071
    invoke-direct/range {p0 .. p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 1073
    new-instance v7, Ljava/util/Formatter$FormatSpecifierParser;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v7, fsp:Ljava/util/Formatter$FormatSpecifierParser;
    const/4 v11, 0x0

    .line 1075
    .local v11, currentObjectIndex:I
    const/4 v14, 0x0

    .line 1076
    .local v14, lastArgument:Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1078
    .local v9, hasLastArgumentSet:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1079
    .local v15, length:I
    const/4 v13, 0x0

    .local v13, i:I
    move-object v8, v14

    move v12, v11

    .line 1080
    .end local v11           #currentObjectIndex:I
    .end local v14           #lastArgument:Ljava/lang/Object;
    .local v12, currentObjectIndex:I
    :goto_15
    if-ge v13, v15, :cond_8c

    .line 1082
    move/from16 v18, v13

    .line 1083
    .local v18, plainTextStart:I
    const/16 v4, 0x25

    move-object/from16 v0, p1

    move v1, v4

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1084
    .local v16, nextPercent:I
    const/4 v4, -0x1

    move/from16 v0, v16

    move v1, v4

    if-ne v0, v1, :cond_82

    move/from16 v17, v15

    .line 1086
    .local v17, plainTextEnd:I
    :goto_2b
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3c

    .line 1087
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    .line 1089
    :cond_3c
    move/from16 v13, v17

    .line 1091
    if-ge v13, v15, :cond_90

    .line 1092
    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Formatter$FormatSpecifierParser;->parseFormatToken(I)Ljava/util/Formatter$FormatToken;

    move-result-object v20

    .line 1094
    .local v20, token:Ljava/util/Formatter$FormatToken;
    const/4 v10, 0x0

    .line 1095
    .local v10, argument:Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->requireArgument()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 1096
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_85

    add-int/lit8 v11, v12, 0x1

    .end local v12           #currentObjectIndex:I
    .restart local v11       #currentObjectIndex:I
    move v6, v12

    .local v6, index:I
    :goto_57
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    .line 1097
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter;->getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v10

    .line 1098
    move-object v14, v10

    .line 1099
    .restart local v14       #lastArgument:Ljava/lang/Object;
    const/4 v9, 0x1

    move-object v4, v14

    .line 1102
    .end local v6           #index:I
    .end local v10           #argument:Ljava/lang/Object;
    .end local v14           #lastArgument:Ljava/lang/Object;
    :goto_62
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;->transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1104
    .local v19, substitution:Ljava/lang/CharSequence;
    if-eqz v19, :cond_7b

    .line 1105
    const/4 v5, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    .line 1107
    :cond_7b
    #getter for: Ljava/util/Formatter$FormatSpecifierParser;->i:I
    invoke-static {v7}, Ljava/util/Formatter$FormatSpecifierParser;->access$000(Ljava/util/Formatter$FormatSpecifierParser;)I

    move-result v13

    .end local v19           #substitution:Ljava/lang/CharSequence;
    .end local v20           #token:Ljava/util/Formatter$FormatToken;
    :goto_7f
    move-object v8, v4

    move v12, v11

    .line 1109
    .end local v11           #currentObjectIndex:I
    .restart local v12       #currentObjectIndex:I
    goto :goto_15

    .end local v17           #plainTextEnd:I
    :cond_82
    move/from16 v17, v16

    .line 1084
    goto :goto_2b

    .line 1096
    .restart local v10       #argument:Ljava/lang/Object;
    .restart local v17       #plainTextEnd:I
    .restart local v20       #token:Ljava/util/Formatter$FormatToken;
    :cond_85
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v4

    move v6, v4

    move v11, v12

    .end local v12           #currentObjectIndex:I
    .restart local v11       #currentObjectIndex:I
    goto :goto_57

    .line 1110
    .end local v10           #argument:Ljava/lang/Object;
    .end local v11           #currentObjectIndex:I
    .end local v16           #nextPercent:I
    .end local v17           #plainTextEnd:I
    .end local v18           #plainTextStart:I
    .end local v20           #token:Ljava/util/Formatter$FormatToken;
    .restart local v12       #currentObjectIndex:I
    :cond_8c
    return-void

    .restart local v10       #argument:Ljava/lang/Object;
    .restart local v16       #nextPercent:I
    .restart local v17       #plainTextEnd:I
    .restart local v18       #plainTextStart:I
    .restart local v20       #token:Ljava/util/Formatter$FormatToken;
    :cond_8d
    move-object v4, v8

    move v11, v12

    .end local v12           #currentObjectIndex:I
    .restart local v11       #currentObjectIndex:I
    goto :goto_62

    .end local v10           #argument:Ljava/lang/Object;
    .end local v11           #currentObjectIndex:I
    .end local v20           #token:Ljava/util/Formatter$FormatToken;
    .restart local v12       #currentObjectIndex:I
    :cond_90
    move-object v4, v8

    move v11, v12

    .end local v12           #currentObjectIndex:I
    .restart local v11       #currentObjectIndex:I
    goto :goto_7f
.end method

.method private getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 8
    .parameter "args"
    .parameter "index"
    .parameter "fsp"
    .parameter "lastArgument"
    .parameter "hasLastArgumentSet"

    .prologue
    const/4 v1, -0x2

    .line 1123
    if-ne p2, v1, :cond_d

    if-nez p5, :cond_d

    .line 1124
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_d
    if-nez p1, :cond_11

    .line 1128
    const/4 v0, 0x0

    .line 1139
    :goto_10
    return-object v0

    .line 1131
    :cond_11
    array-length v0, p1

    if-lt p2, v0, :cond_1e

    .line 1132
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    invoke-virtual {p3}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_1e
    if-ne p2, v1, :cond_22

    move-object v0, p4

    .line 1136
    goto :goto_10

    .line 1139
    :cond_22
    aget-object v0, p1, p2

    goto :goto_10
.end method

.method private getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;
    .registers 4
    .parameter "pattern"

    .prologue
    .line 597
    sget-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Formatter$CachedDecimalFormat;

    iget-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    invoke-virtual {v0, v1, p1}, Ljava/util/Formatter$CachedDecimalFormat;->update(Llibcore/icu/LocaleData;Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v0

    return-object v0
.end method

.method private insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "s"

    .prologue
    const/16 v6, 0x2d

    .line 1536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1539
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1540
    .local v0, digitsLength:I
    const/4 v2, 0x0

    .line 1541
    .local v2, i:I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_25

    .line 1542
    add-int/lit8 v0, v0, -0x1

    .line 1543
    add-int/lit8 v2, v2, 0x1

    .line 1544
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1548
    :cond_25
    rem-int/lit8 v1, v0, 0x3

    .line 1549
    .local v1, headLength:I
    if-nez v1, :cond_2a

    .line 1550
    const/4 v1, 0x3

    .line 1552
    :cond_2a
    add-int v4, v2, v1

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1553
    add-int/2addr v2, v1

    .line 1556
    :goto_30
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_45

    .line 1557
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v4, v4, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1558
    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1556
    add-int/lit8 v2, v2, 0x3

    goto :goto_30

    .line 1560
    :cond_45
    return-object v3
.end method

.method private localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "s"

    .prologue
    const/16 v6, 0x30

    .line 1518
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1519
    .local v2, length:I
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    sub-int v3, v5, v6

    .line 1520
    .local v3, offsetToLocalizedDigits:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1521
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v2, :cond_27

    .line 1522
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1523
    .local v0, ch:C
    if-lt v0, v6, :cond_21

    const/16 v5, 0x39

    if-gt v0, v5, :cond_21

    .line 1524
    add-int v5, v0, v3

    int-to-char v0, v5

    .line 1526
    :cond_21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1521
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1528
    .end local v0           #ch:C
    :cond_27
    return-object v4
.end method

.method private outputCharSequence(Ljava/lang/CharSequence;II)V
    .registers 6
    .parameter "cs"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1115
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1119
    :goto_5
    return-void

    .line 1116
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1117
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_5
.end method

.method private padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 14
    .parameter "source"
    .parameter "startIndex"

    .prologue
    .line 1645
    move v7, p2

    .line 1646
    .local v7, start:I
    iget-object v9, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v9}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v8

    .line 1647
    .local v8, width:I
    iget-object v9, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v9}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 1649
    .local v5, precision:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1650
    .local v1, length:I
    if-ltz v5, :cond_22

    .line 1651
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1652
    instance-of v9, p1, Ljava/lang/StringBuilder;

    if-eqz v9, :cond_30

    .line 1653
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    move-object v9, v0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1658
    :cond_22
    :goto_22
    if-lez v8, :cond_2c

    .line 1659
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1661
    :cond_2c
    if-lt v1, v8, :cond_36

    move-object v9, p1

    .line 1686
    :goto_2f
    return-object v9

    .line 1655
    :cond_30
    const/4 v9, 0x0

    invoke-interface {p1, v9, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_22

    .line 1665
    :cond_36
    const/16 v2, 0x20

    .line 1666
    .local v2, paddingChar:C
    iget-object v9, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v9, v9, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v9, :cond_65

    .line 1667
    iget-object v9, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v9}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v9

    const/16 v10, 0x64

    if-ne v9, v10, :cond_62

    .line 1668
    iget-object v9, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v2, v9, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 1676
    :goto_4c
    sub-int v9, v8, v1

    new-array v3, v9, [C

    .line 1677
    .local v3, paddingChars:[C
    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1679
    iget-object v9, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v4, v9, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    .line 1680
    .local v4, paddingRight:Z
    invoke-direct {p0, p1}, Ljava/util/Formatter;->toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1681
    .local v6, result:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_67

    .line 1682
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_60
    move-object v9, v6

    .line 1686
    goto :goto_2f

    .line 1670
    .end local v3           #paddingChars:[C
    .end local v4           #paddingRight:Z
    .end local v6           #result:Ljava/lang/StringBuilder;
    :cond_62
    const/16 v2, 0x30

    goto :goto_4c

    .line 1674
    :cond_65
    const/4 v7, 0x0

    goto :goto_4c

    .line 1684
    .restart local v3       #paddingChars:[C
    .restart local v4       #paddingRight:Z
    .restart local v6       #result:Ljava/lang/StringBuilder;
    :cond_67
    invoke-virtual {v6, v7, v3}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_60
.end method

.method private to12Hour(I)I
    .registers 3
    .parameter "hour"

    .prologue
    .line 2006
    if-nez p1, :cond_5

    const/16 v0, 0xc

    :goto_4
    return v0

    :cond_5
    move v0, p1

    goto :goto_4
.end method

.method private toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "cs"

    .prologue
    .line 1690
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/StringBuilder;

    .end local p1
    move-object v0, p1

    :goto_7
    return-object v0

    .restart local p1
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method private transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "token"
    .parameter "argument"

    .prologue
    const/4 v5, 0x0

    .line 1429
    iput-object p1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    .line 1430
    iput-object p2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .line 1436
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1437
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_106

    .line 1463
    :cond_12
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$FormatToken;->checkFlags(Ljava/lang/Object;)V

    .line 1465
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_110

    .line 1498
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v2

    throw v2

    .line 1439
    :sswitch_25
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_2c

    .line 1440
    const-string v2, "null"

    .line 1506
    .end local p0
    :goto_2b
    return-object v2

    .line 1441
    .restart local p0
    :cond_2c
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-nez v2, :cond_12

    .line 1442
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 1446
    :sswitch_39
    iget-object v2, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v2, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v3, 0x30

    if-eq v2, v3, :cond_6e

    const/4 v2, 0x1

    move v0, v2

    .line 1447
    .local v0, needLocalizedDigits:Z
    :goto_43
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v2, v2, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_88

    if-nez v0, :cond_88

    .line 1448
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_5d

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_5d

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_71

    .line 1449
    :cond_5d
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    move-object v2, v5

    .line 1450
    goto :goto_2b

    .line 1446
    .end local v0           #needLocalizedDigits:Z
    .restart local p0
    :cond_6e
    const/4 v2, 0x0

    move v0, v2

    goto :goto_43

    .line 1451
    .restart local v0       #needLocalizedDigits:Z
    :cond_71
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_88

    .line 1452
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    move-object v2, v5

    .line 1453
    goto :goto_2b

    .line 1456
    .restart local p0
    :cond_88
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_a0

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_a0

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_a0

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_12

    .line 1457
    :cond_a0
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1458
    .local v1, result:Ljava/lang/String;
    if-eqz v0, :cond_ae

    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2b

    :cond_ae
    move-object v2, v1

    goto/16 :goto_2b

    .line 1467
    .end local v0           #needLocalizedDigits:Z
    .end local v1           #result:Ljava/lang/String;
    :sswitch_b1
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBoolean()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1501
    .local v1, result:Ljava/lang/CharSequence;
    :goto_b5
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 1502
    if-eqz v1, :cond_cb

    .line 1503
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :cond_cb
    move-object v2, v1

    .line 1506
    goto/16 :goto_2b

    .line 1470
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_ce
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromHashCode()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1471
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_b5

    .line 1473
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_d3
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1474
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_b5

    .line 1476
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_d8
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromCharacter()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1477
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_b5

    .line 1479
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_dd
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_e7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_ec

    .line 1480
    :cond_e7
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBigInteger()Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_b5

    .line 1482
    .end local v1           #result:Ljava/lang/CharSequence;
    :cond_ec
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromInteger()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1484
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_b5

    .line 1486
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_f1
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromFloat()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1487
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_b5

    .line 1489
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_f6
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromPercent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1490
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_b5

    .line 1492
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_fb
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromLineSeparator()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1493
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_b5

    .line 1495
    .end local v1           #result:Ljava/lang/CharSequence;
    :sswitch_100
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromDateTime()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1496
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_b5

    .line 1437
    nop

    :sswitch_data_106
    .sparse-switch
        0x64 -> :sswitch_39
        0x73 -> :sswitch_25
    .end sparse-switch

    .line 1465
    :sswitch_data_110
    .sparse-switch
        0x25 -> :sswitch_f6
        0x41 -> :sswitch_f1
        0x42 -> :sswitch_b1
        0x43 -> :sswitch_d8
        0x45 -> :sswitch_f1
        0x47 -> :sswitch_f1
        0x48 -> :sswitch_ce
        0x53 -> :sswitch_d3
        0x54 -> :sswitch_100
        0x58 -> :sswitch_dd
        0x61 -> :sswitch_f1
        0x62 -> :sswitch_b1
        0x63 -> :sswitch_d8
        0x64 -> :sswitch_dd
        0x65 -> :sswitch_f1
        0x66 -> :sswitch_f1
        0x67 -> :sswitch_f1
        0x68 -> :sswitch_ce
        0x6e -> :sswitch_fb
        0x6f -> :sswitch_dd
        0x73 -> :sswitch_d3
        0x74 -> :sswitch_100
        0x78 -> :sswitch_dd
    .end sparse-switch
.end method

.method private transformFromBigInteger()Ljava/lang/CharSequence;
    .registers 11

    .prologue
    const/16 v9, 0x6f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1784
    const/4 v5, 0x0

    .line 1785
    .local v5, startIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1786
    .local v4, result:Ljava/lang/StringBuilder;
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    .line 1787
    .local v0, bigInt:Ljava/math/BigInteger;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    .line 1789
    .local v1, currentConversionType:C
    if-nez v0, :cond_1b

    .line 1790
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1837
    :goto_1a
    return-object v6

    .line 1793
    :cond_1b
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_76

    move v3, v8

    .line 1795
    .local v3, isNegative:Z
    :goto_24
    const/16 v6, 0x64

    if-ne v1, v6, :cond_78

    .line 1796
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1797
    .local v2, digits:Ljava/lang/CharSequence;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v6, :cond_38

    .line 1798
    invoke-direct {p0, v2}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1800
    :cond_38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1808
    .end local v2           #digits:Ljava/lang/CharSequence;
    :goto_3b
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v6, :cond_4d

    .line 1809
    if-eqz v3, :cond_8e

    move v5, v8

    .line 1810
    :goto_44
    if-ne v1, v9, :cond_90

    .line 1811
    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    add-int/lit8 v5, v5, 0x1

    .line 1819
    :cond_4d
    :goto_4d
    if-nez v3, :cond_69

    .line 1820
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_5c

    .line 1821
    const/16 v6, 0x2b

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1822
    add-int/lit8 v5, v5, 0x1

    .line 1824
    :cond_5c
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_69

    .line 1825
    const/16 v6, 0x20

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1826
    add-int/lit8 v5, v5, 0x1

    .line 1831
    :cond_69
    if-eqz v3, :cond_a0

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_a0

    .line 1832
    invoke-direct {p0, v4}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1a

    .end local v3           #isNegative:Z
    :cond_76
    move v3, v7

    .line 1793
    goto :goto_24

    .line 1801
    .restart local v3       #isNegative:Z
    :cond_78
    if-ne v1, v9, :cond_84

    .line 1803
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 1806
    :cond_84
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_8e
    move v5, v7

    .line 1809
    goto :goto_44

    .line 1813
    :cond_90
    const/16 v6, 0x78

    if-eq v1, v6, :cond_98

    const/16 v6, 0x58

    if-ne v1, v6, :cond_4d

    .line 1814
    :cond_98
    const-string v6, "0x"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    add-int/lit8 v5, v5, 0x2

    goto :goto_4d

    .line 1834
    :cond_a0
    if-eqz v3, :cond_aa

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_aa

    .line 1835
    add-int/lit8 v5, v5, 0x1

    .line 1837
    :cond_aa
    invoke-direct {p0, v4, v5}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_1a
.end method

.method private transformFromBoolean()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1565
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    .line 1566
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1572
    .local v0, result:Ljava/lang/CharSequence;
    :goto_c
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1567
    .end local v0           #result:Ljava/lang/CharSequence;
    :cond_12
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_19

    .line 1568
    const-string v0, "false"

    .restart local v0       #result:Ljava/lang/CharSequence;
    goto :goto_c

    .line 1570
    .end local v0           #result:Ljava/lang/CharSequence;
    :cond_19
    const-string v0, "true"

    .restart local v0       #result:Ljava/lang/CharSequence;
    goto :goto_c
.end method

.method private transformFromCharacter()Ljava/lang/CharSequence;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1610
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_c

    .line 1611
    const-string v2, "null"

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1623
    :goto_b
    return-object v2

    .line 1613
    :cond_c
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Character;

    if-eqz v2, :cond_1d

    .line 1614
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_b

    .line 1615
    :cond_1d
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_2f

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2f

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5c

    .line 1616
    :cond_2f
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1617
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1618
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 1620
    :cond_43
    const/high16 v2, 0x1

    if-ge v0, v2, :cond_52

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1623
    .local v1, result:Ljava/lang/CharSequence;
    :goto_4d
    invoke-direct {p0, v1, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_b

    .line 1620
    .end local v1           #result:Ljava/lang/CharSequence;
    :cond_52
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_4d

    .line 1625
    .end local v0           #codePoint:I
    :cond_5c
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v2

    throw v2
.end method

.method private transformFromDateTime()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    .line 1841
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v3, :cond_9

    .line 1842
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1865
    :goto_8
    return-object v3

    .line 1846
    :cond_9
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Calendar;

    if-eqz v3, :cond_2b

    .line 1847
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    .line 1861
    .local v0, calendar:Ljava/util/Calendar;
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1862
    .local v2, result:Ljava/lang/StringBuilder;
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getDateSuffix()C

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 1863
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v3

    throw v3

    .line 1849
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #result:Ljava/lang/StringBuilder;
    :cond_2b
    const/4 v1, 0x0

    .line 1850
    .local v1, date:Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_49

    .line 1851
    new-instance v1, Ljava/util/Date;

    .end local v1           #date:Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1857
    .restart local v1       #date:Ljava/util/Date;
    :goto_3f
    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1858
    .restart local v0       #calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_13

    .line 1852
    .end local v0           #calendar:Ljava/util/Calendar;
    :cond_49
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Date;

    if-eqz v3, :cond_54

    .line 1853
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    .end local v1           #date:Ljava/util/Date;
    check-cast v1, Ljava/util/Date;

    .restart local v1       #date:Ljava/util/Date;
    goto :goto_3f

    .line 1855
    :cond_54
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v3

    throw v3

    .line 1865
    .end local v1           #date:Ljava/util/Date;
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v2       #result:Ljava/lang/StringBuilder;
    :cond_59
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_8
.end method

.method private transformFromFloat()Ljava/lang/CharSequence;
    .registers 14

    .prologue
    const/16 v12, 0x61

    const/16 v11, 0x41

    const/16 v10, 0x2b

    const/4 v9, 0x0

    .line 2058
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v7, :cond_10

    .line 2059
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v7

    .line 2123
    :goto_f
    return-object v7

    .line 2060
    :cond_10
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Float;

    if-nez v7, :cond_1c

    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Double;

    if-eqz v7, :cond_39

    .line 2061
    :cond_1c
    iget-object v4, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    .line 2062
    .local v4, number:Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 2063
    .local v1, d:D
    cmpl-double v7, v1, v1

    if-nez v7, :cond_34

    const-wide/high16 v7, 0x7ff0

    cmpl-double v7, v1, v7

    if-eqz v7, :cond_34

    const-wide/high16 v7, -0x10

    cmpl-double v7, v1, v7

    if-nez v7, :cond_3f

    .line 2064
    :cond_34
    invoke-direct {p0, v1, v2}, Ljava/util/Formatter;->transformFromSpecialNumber(D)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_f

    .line 2066
    .end local v1           #d:D
    .end local v4           #number:Ljava/lang/Number;
    :cond_39
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_66

    .line 2073
    :cond_3f
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    .line 2074
    .local v0, conversionType:C
    if-eq v0, v12, :cond_57

    if-eq v0, v11, :cond_57

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v7

    if-nez v7, :cond_57

    .line 2075
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2078
    :cond_57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2079
    .local v5, result:Ljava/lang/StringBuilder;
    sparse-switch v0, :sswitch_data_ce

    .line 2094
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v7

    throw v7

    .line 2070
    .end local v0           #conversionType:C
    .end local v5           #result:Ljava/lang/StringBuilder;
    :cond_66
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v7

    throw v7

    .line 2081
    .restart local v0       #conversionType:C
    .restart local v5       #result:Ljava/lang/StringBuilder;
    :sswitch_6b
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transform_a(Ljava/lang/StringBuilder;)V

    .line 2097
    :goto_6e
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2099
    const/4 v6, 0x0

    .line 2100
    .local v6, startIndex:I
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v8, v8, Llibcore/icu/LocaleData;->minusSign:C

    if-ne v7, v8, :cond_96

    .line 2101
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v7, :cond_ae

    .line 2102
    invoke-direct {p0, v5}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_f

    .line 2084
    .end local v6           #startIndex:I
    :sswitch_8a
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transform_e(Ljava/lang/StringBuilder;)V

    goto :goto_6e

    .line 2087
    :sswitch_8e
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transform_f(Ljava/lang/StringBuilder;)V

    goto :goto_6e

    .line 2091
    :sswitch_92
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transform_g(Ljava/lang/StringBuilder;)V

    goto :goto_6e

    .line 2105
    .restart local v6       #startIndex:I
    :cond_96
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v7, :cond_a3

    .line 2106
    const/16 v7, 0x20

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2107
    add-int/lit8 v6, v6, 0x1

    .line 2109
    :cond_a3
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v7, :cond_ae

    .line 2110
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2111
    add-int/lit8 v6, v6, 0x1

    .line 2115
    :cond_ae
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2116
    .local v3, firstChar:C
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v7, :cond_c1

    if-eq v3, v10, :cond_c0

    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v7, v7, Llibcore/icu/LocaleData;->minusSign:C

    if-ne v3, v7, :cond_c1

    .line 2117
    :cond_c0
    const/4 v6, 0x1

    .line 2120
    :cond_c1
    if-eq v0, v12, :cond_c5

    if-ne v0, v11, :cond_c7

    .line 2121
    :cond_c5
    add-int/lit8 v6, v6, 0x2

    .line 2123
    :cond_c7
    invoke-direct {p0, v5, v6}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_f

    .line 2079
    nop

    :sswitch_data_ce
    .sparse-switch
        0x41 -> :sswitch_6b
        0x45 -> :sswitch_8a
        0x47 -> :sswitch_92
        0x61 -> :sswitch_6b
        0x65 -> :sswitch_8a
        0x66 -> :sswitch_8e
        0x67 -> :sswitch_92
    .end sparse-switch
.end method

.method private transformFromHashCode()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1577
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_c

    .line 1578
    const-string v0, "null"

    .line 1582
    .local v0, result:Ljava/lang/CharSequence;
    :goto_6
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1580
    .end local v0           #result:Ljava/lang/CharSequence;
    :cond_c
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/CharSequence;
    goto :goto_6
.end method

.method private transformFromInteger()Ljava/lang/CharSequence;
    .registers 11

    .prologue
    const/16 v9, 0x6f

    const/4 v8, 0x0

    .line 1707
    const/4 v3, 0x0

    .line 1708
    .local v3, startIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1709
    .local v2, result:Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    .line 1712
    .local v0, currentConversionType:C
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_5e

    .line 1713
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1724
    .local v4, value:J
    :goto_1d
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v6, :cond_2c

    .line 1725
    if-ne v0, v9, :cond_90

    .line 1726
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    add-int/lit8 v3, v3, 0x1

    .line 1734
    :cond_2c
    :goto_2c
    const/16 v6, 0x64

    if-ne v0, v6, :cond_c1

    .line 1735
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1736
    .local v1, digits:Ljava/lang/CharSequence;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v6, :cond_3e

    .line 1737
    invoke-direct {p0, v1}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1739
    :cond_3e
    iget-object v6, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v6, v6, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v7, 0x30

    if-eq v6, v7, :cond_4a

    .line 1740
    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1742
    :cond_4a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1744
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_a5

    .line 1745
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_98

    .line 1746
    invoke-direct {p0, v2}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1775
    .end local v1           #digits:Ljava/lang/CharSequence;
    :goto_5d
    return-object v6

    .line 1714
    .end local v4           #value:J
    :cond_5e
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6d

    .line 1715
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    .restart local v4       #value:J
    goto :goto_1d

    .line 1716
    .end local v4           #value:J
    :cond_6d
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_7c

    .line 1717
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->longValue()J

    move-result-wide v4

    .restart local v4       #value:J
    goto :goto_1d

    .line 1718
    .end local v4           #value:J
    :cond_7c
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_8b

    .line 1719
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->longValue()J

    move-result-wide v4

    .restart local v4       #value:J
    goto :goto_1d

    .line 1721
    .end local v4           #value:J
    :cond_8b
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v6

    throw v6

    .line 1729
    .restart local v4       #value:J
    :cond_90
    const-string v6, "0x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    add-int/lit8 v3, v3, 0x2

    goto :goto_2c

    .line 1747
    .restart local v1       #digits:Ljava/lang/CharSequence;
    :cond_98
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_a0

    .line 1748
    add-int/lit8 v3, v3, 0x1

    .line 1775
    .end local v1           #digits:Ljava/lang/CharSequence;
    :cond_a0
    :goto_a0
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_5d

    .line 1751
    .restart local v1       #digits:Ljava/lang/CharSequence;
    :cond_a5
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_b3

    .line 1752
    const/16 v6, 0x2b

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1753
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 1754
    :cond_b3
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_a0

    .line 1755
    const/16 v6, 0x20

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1756
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 1761
    .end local v1           #digits:Ljava/lang/CharSequence;
    :cond_c1
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_d4

    .line 1762
    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 1768
    :cond_ca
    :goto_ca
    if-ne v0, v9, :cond_ec

    .line 1769
    invoke-static {v4, v5}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 1763
    :cond_d4
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_df

    .line 1764
    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    goto :goto_ca

    .line 1765
    :cond_df
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_ca

    .line 1766
    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    goto :goto_ca

    .line 1771
    :cond_ec
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0
.end method

.method private transformFromLineSeparator()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1634
    sget-object v0, Ljava/util/Formatter;->lineSeparator:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 1635
    new-instance v0, Ljava/util/Formatter$2;

    invoke-direct {v0, p0}, Ljava/util/Formatter$2;-><init>(Ljava/util/Formatter;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    sput-object p0, Ljava/util/Formatter;->lineSeparator:Ljava/lang/String;

    .line 1641
    :cond_11
    sget-object v0, Ljava/util/Formatter;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method private transformFromNull()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1779
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v1, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 1780
    const-string v0, "null"

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromPercent()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1630
    const-string v0, "%"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromSpecialNumber(D)Ljava/lang/CharSequence;
    .registers 7
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 2031
    const/4 v0, 0x0

    .line 2032
    .local v0, source:Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2033
    const-string v0, "NaN"

    .line 2052
    :goto_a
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2053
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v3, v1, Ljava/util/Formatter$FormatToken;->flagZero:Z

    .line 2054
    invoke-direct {p0, v0, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_18
    return-object v1

    .line 2034
    :cond_19
    const-wide/high16 v1, 0x7ff0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_34

    .line 2035
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v1, :cond_28

    .line 2036
    const-string v0, "+Infinity"

    goto :goto_a

    .line 2037
    :cond_28
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v1, :cond_31

    .line 2038
    const-string v0, " Infinity"

    goto :goto_a

    .line 2040
    :cond_31
    const-string v0, "Infinity"

    goto :goto_a

    .line 2042
    :cond_34
    const-wide/high16 v1, -0x10

    cmpl-double v1, p1, v1

    if-nez v1, :cond_46

    .line 2043
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v1, :cond_43

    .line 2044
    const-string v0, "(Infinity)"

    goto :goto_a

    .line 2046
    :cond_43
    const-string v0, "-Infinity"

    goto :goto_a

    .line 2049
    :cond_46
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private transformFromString()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    .line 1586
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-eqz v2, :cond_3a

    .line 1587
    const/4 v0, 0x0

    .line 1588
    .local v0, flags:I
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v2, :cond_f

    .line 1589
    or-int/lit8 v0, v0, 0x1

    .line 1591
    :cond_f
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v2, :cond_17

    .line 1592
    or-int/lit8 v0, v0, 0x4

    .line 1594
    :cond_17
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v2}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1595
    or-int/lit8 v0, v0, 0x2

    .line 1597
    :cond_25
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/util/Formattable;

    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v3

    iget-object v4, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    invoke-interface {v2, p0, v0, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    .line 1603
    const/4 v2, 0x0

    .line 1606
    .end local v0           #flags:I
    :goto_39
    return-object v2

    .line 1605
    :cond_3a
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1606
    .local v1, result:Ljava/lang/CharSequence;
    :goto_45
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_39

    .line 1605
    .end local v1           #result:Ljava/lang/CharSequence;
    :cond_4b
    const-string v2, "null"

    move-object v1, v2

    goto :goto_45
.end method

.method private transform_a(Ljava/lang/StringBuilder;)V
    .registers 9
    .parameter "result"

    .prologue
    .line 2260
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_1e

    .line 2261
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toHexString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    :goto_15
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v5

    if-nez v5, :cond_39

    .line 2291
    :cond_1d
    :goto_1d
    return-void

    .line 2262
    :cond_1e
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Double;

    if-eqz v5, :cond_34

    .line 2263
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 2265
    :cond_34
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v5

    throw v5

    .line 2272
    :cond_39
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v3

    .line 2273
    .local v3, precision:I
    if-nez v3, :cond_42

    .line 2274
    const/4 v3, 0x1

    .line 2276
    :cond_42
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 2277
    .local v1, indexOfFirstFractionalDigit:I
    const-string v5, "p"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2278
    .local v2, indexOfP:I
    sub-int v0, v2, v1

    .line 2280
    .local v0, fractionalLength:I
    if-eq v0, v3, :cond_1d

    .line 2284
    if-ge v0, v3, :cond_63

    .line 2285
    sub-int v5, v3, v0

    new-array v4, v5, [C

    .line 2286
    .local v4, zeros:[C
    const/16 v5, 0x30

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 2287
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 2290
    .end local v4           #zeros:[C
    :cond_63
    add-int v5, v1, v3

    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1d
.end method

.method private transform_e(Ljava/lang/StringBuilder;)V
    .registers 13
    .parameter "result"

    .prologue
    const/4 v10, 0x0

    .line 2128
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2129
    .local v5, precision:I
    const-string v4, "0E+00"

    .line 2130
    .local v4, pattern:Ljava/lang/String;
    if-lez v5, :cond_25

    .line 2131
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "0."

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2132
    .local v6, sb:Ljava/lang/StringBuilder;
    new-array v7, v5, [C

    .line 2133
    .local v7, zeros:[C
    const/16 v8, 0x30

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([CC)V

    .line 2134
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2135
    const-string v8, "E+00"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2139
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #zeros:[C
    :cond_25
    invoke-direct {p0, v4}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v3

    .line 2141
    .local v3, nf:Llibcore/icu/NativeDecimalFormat;
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v8, v8, Ljava/math/BigDecimal;

    if-eqz v8, :cond_48

    .line 2142
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/math/BigDecimal;

    invoke-virtual {v3, v8, v10}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v0

    .line 2147
    .local v0, chars:[C
    :goto_37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    array-length v8, v0

    if-ge v1, v8, :cond_55

    .line 2148
    aget-char v8, v0, v1

    const/16 v9, 0x45

    if-ne v8, v9, :cond_45

    .line 2149
    const/16 v8, 0x65

    aput-char v8, v0, v1

    .line 2147
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 2144
    .end local v0           #chars:[C
    .end local v1           #i:I
    :cond_48
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9, v10}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v0

    .restart local v0       #chars:[C
    goto :goto_37

    .line 2152
    .restart local v1       #i:I
    :cond_55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2154
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v8, :cond_6d

    if-nez v5, :cond_6d

    .line 2155
    const-string v8, "e"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2156
    .local v2, indexOfE:I
    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v8, v8, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v2, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2158
    .end local v2           #indexOfE:I
    :cond_6d
    return-void
.end method

.method private transform_f(Ljava/lang/StringBuilder;)V
    .registers 12
    .parameter "result"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x30

    .line 2226
    const-string v3, "0.000000"

    .line 2227
    .local v3, pattern:Ljava/lang/String;
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2228
    .local v5, precision:I
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-nez v7, :cond_14

    const/4 v7, 0x6

    if-eq v5, v7, :cond_49

    .line 2229
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2230
    .local v4, patternBuilder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v7, :cond_32

    .line 2231
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2232
    const/4 v0, 0x3

    .line 2233
    .local v0, groupingSize:I
    const/4 v7, 0x1

    sub-int v7, v0, v7

    new-array v6, v7, [C

    .line 2234
    .local v6, sharps:[C
    const/16 v7, 0x23

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([CC)V

    .line 2235
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2237
    .end local v0           #groupingSize:I
    .end local v6           #sharps:[C
    :cond_32
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2238
    if-lez v5, :cond_45

    .line 2239
    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2240
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3d
    if-ge v1, v5, :cond_45

    .line 2241
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2240
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 2244
    .end local v1           #i:I
    :cond_45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2247
    .end local v4           #patternBuilder:Ljava/lang/StringBuilder;
    :cond_49
    invoke-direct {p0, v3}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v2

    .line 2248
    .local v2, nf:Llibcore/icu/NativeDecimalFormat;
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_6e

    .line 2249
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v2, v7, v9}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2254
    :goto_5e
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v7, :cond_6d

    if-nez v5, :cond_6d

    .line 2255
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v7, v7, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2257
    :cond_6d
    return-void

    .line 2251
    :cond_6e
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2, v7, v8, v9}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_5e
.end method

.method private transform_g(Ljava/lang/StringBuilder;)V
    .registers 15
    .parameter "result"

    .prologue
    .line 2161
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2162
    .local v5, precision:I
    if-nez v5, :cond_9

    .line 2163
    const/4 v5, 0x1

    .line 2165
    :cond_9
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2167
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 2168
    .local v1, d:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v1, v7

    if-nez v7, :cond_27

    .line 2169
    add-int/lit8 v5, v5, -0x1

    .line 2170
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2171
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transform_f(Ljava/lang/StringBuilder;)V

    .line 2222
    :goto_26
    return-void

    .line 2175
    :cond_27
    const/4 v6, 0x1

    .line 2176
    .local v6, requireScientificRepresentation:Z
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 2177
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 2178
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2179
    add-int/lit8 v5, v5, -0x1

    .line 2180
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2181
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transform_e(Ljava/lang/StringBuilder;)V

    goto :goto_26

    .line 2184
    :cond_43
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v7, Ljava/math/MathContext;

    invoke-direct {v7, v5}, Ljava/math/MathContext;-><init>(I)V

    invoke-direct {v0, v1, v2, v7}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 2185
    .local v0, b:Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 2186
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 2188
    .local v3, l:J
    const-wide/high16 v7, 0x3ff0

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_b9

    const-wide/high16 v7, 0x4024

    int-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    cmpg-double v7, v1, v7

    if-gez v7, :cond_b9

    .line 2189
    long-to-double v7, v3

    const-wide/high16 v9, 0x4024

    int-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_a5

    .line 2190
    const/4 v6, 0x0

    .line 2191
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v5, v7

    .line 2192
    if-gez v5, :cond_80

    const/4 v7, 0x0

    move v5, v7

    .line 2193
    :cond_80
    const-wide/high16 v7, 0x4024

    add-int/lit8 v9, v5, 0x1

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 2194
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_a0

    .line 2195
    add-int/lit8 v5, v5, 0x1

    .line 2197
    :cond_a0
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2214
    :cond_a5
    :goto_a5
    if-eqz v6, :cond_119

    .line 2215
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    .line 2216
    add-int/lit8 v5, v5, -0x1

    .line 2217
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    .line 2218
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transform_e(Ljava/lang/StringBuilder;)V

    goto/16 :goto_26

    .line 2200
    :cond_b9
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 2201
    const-wide/high16 v7, 0x4024

    const-wide/high16 v9, -0x3ff0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_a5

    const-wide/high16 v7, 0x3ff0

    cmpg-double v7, v1, v7

    if-gez v7, :cond_a5

    .line 2202
    const/4 v6, 0x0

    .line 2203
    const/4 v7, 0x4

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 2204
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 2205
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_fc

    .line 2206
    add-int/lit8 v5, v5, 0x1

    .line 2208
    :cond_fc
    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 2209
    long-to-double v7, v3

    const-wide/high16 v9, 0x4024

    const/4 v11, 0x4

    sub-int v11, v5, v11

    int-to-double v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_a5

    .line 2210
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    goto :goto_a5

    .line 2220
    :cond_119
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transform_f(Ljava/lang/StringBuilder;)V

    goto/16 :goto_26
.end method

.method private wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6
    .parameter "result"

    .prologue
    const/16 v3, 0x29

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1694
    const/16 v0, 0x28

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1695
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v0, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v0, :cond_25

    .line 1696
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    .line 1697
    invoke-direct {p0, p1, v2}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/StringBuilder;

    .line 1698
    .restart local p1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1703
    :goto_24
    return-object p1

    .line 1700
    :cond_25
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1701
    invoke-direct {p0, p1, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/StringBuilder;

    .restart local p1
    goto :goto_24
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 990
    iget-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    if-nez v1, :cond_14

    .line 991
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    .line 993
    :try_start_7
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_14

    .line 994
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_15

    .line 1000
    :cond_14
    :goto_14
    return-void

    .line 996
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 997
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_14
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 969
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 970
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Flushable;

    if-eqz v1, :cond_10

    .line 972
    :try_start_9
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11

    .line 977
    :cond_10
    :goto_10
    return-void

    .line 973
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 974
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_10
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1032
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 6
    .parameter "l"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1059
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1061
    .local v0, originalLocale:Ljava/util/Locale;
    if-nez p1, :cond_16

    :try_start_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_6
    iput-object v1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1062
    iget-object v1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    .line 1063
    invoke-direct {p0, p2, p3}, Ljava/util/Formatter;->doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 1065
    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    .line 1067
    return-object p0

    :cond_16
    move-object v1, p1

    .line 1061
    goto :goto_6

    .line 1065
    :catchall_18
    move-exception v1

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    throw v1
.end method

.method public ioException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 931
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .registers 2

    .prologue
    .line 942
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 943
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 957
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    .line 958
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
