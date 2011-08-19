.class public Lorg/apache/xpath/res/XPATHMessages;
.super Lorg/apache/xml/res/XMLMessages;
.source "XPATHMessages.java"


# static fields
.field private static XPATHBundle:Ljava/util/ListResourceBundle; = null

.field private static final XPATH_ERROR_RESOURCES:Ljava/lang/String; = "org.apache.xpath.res.XPATHErrorResources"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/xpath/res/XPATHErrorResources;

    invoke-direct {v0}, Lorg/apache/xpath/res/XPATHErrorResources;-><init>()V

    sput-object v0, Lorg/apache/xpath/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xml/res/XMLMessages;-><init>()V

    return-void
.end method

.method public static final createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "msgKey"
    .parameter "args"

    .prologue
    .line 54
    sget-object v0, Lorg/apache/xpath/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    invoke-static {v0, p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 11
    .parameter "fResourceBundle"
    .parameter "msgKey"
    .parameter "args"

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, fmsg:Ljava/lang/String;
    const/4 v5, 0x0

    .line 93
    .local v5, throwex:Z
    const/4 v3, 0x0

    .line 95
    .local v3, msg:Ljava/lang/String;
    if-eqz p1, :cond_9

    .line 96
    invoke-virtual {p0, p1}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_9
    if-nez v3, :cond_12

    .line 100
    const-string v6, "BAD_CODE"

    invoke-virtual {p0, v6}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    const/4 v5, 0x1

    .line 104
    :cond_12
    if-eqz p2, :cond_4f

    .line 112
    :try_start_14
    array-length v4, p2

    .line 114
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v4, :cond_23

    .line 116
    aget-object v6, p2, v2

    if-nez v6, :cond_20

    .line 117
    const-string v6, ""

    aput-object v6, p2, v2

    .line 114
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 120
    :cond_23
    invoke-static {v3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_2f

    move-result-object v1

    .line 131
    .end local v2           #i:I
    .end local v4           #n:I
    :goto_27
    if-eqz v5, :cond_51

    .line 133
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    :catch_2f
    move-exception v6

    move-object v0, v6

    .line 124
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "FORMAT_FAILED"

    invoke-virtual {p0, v6}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    goto :goto_27

    .line 129
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4f
    move-object v1, v3

    goto :goto_27

    .line 136
    :cond_51
    return-object v1
.end method

.method public static final createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "msgKey"
    .parameter "args"

    .prologue
    .line 72
    sget-object v0, Lorg/apache/xpath/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    invoke-static {v0, p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
