.class public Lcom/amazon/kcp/util/PunctuationStripper;
.super Ljava/lang/Object;
.source "PunctuationStripper.java"


# static fields
.field private static final dePunctuationPattern:Ljava/util/regex/Pattern;

.field private static final enPunctuationPattern:Ljava/util/regex/Pattern;

.field private static final punctuationPatterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 16
    const-string v0, "[^a-z]*([a-z]+).*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/PunctuationStripper;->enPunctuationPattern:Ljava/util/regex/Pattern;

    .line 19
    const-string v0, "[^a-z\u00e4\u00f6\u00fc\u00df]*([a-z\u00e4\u00f6\u00fc\u00df]+).*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/PunctuationStripper;->dePunctuationPattern:Ljava/util/regex/Pattern;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/PunctuationStripper;->punctuationPatterns:Ljava/util/HashMap;

    .line 26
    sget-object v0, Lcom/amazon/kcp/util/PunctuationStripper;->punctuationPatterns:Ljava/util/HashMap;

    const-string v1, "en"

    sget-object v2, Lcom/amazon/kcp/util/PunctuationStripper;->enPunctuationPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/amazon/kcp/util/PunctuationStripper;->punctuationPatterns:Ljava/util/HashMap;

    const-string v1, "de"

    sget-object v2, Lcom/amazon/kcp/util/PunctuationStripper;->dePunctuationPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stripPunctuation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    if-nez p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    if-eqz p1, :cond_0

    .line 53
    sget-object v0, Lcom/amazon/kcp/util/PunctuationStripper;->punctuationPatterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 55
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 58
    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Punctuation pattern doesn\'t exist for localeCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    .line 63
    goto :goto_0
.end method
