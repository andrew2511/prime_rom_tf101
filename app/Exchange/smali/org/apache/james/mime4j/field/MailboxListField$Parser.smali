.class public Lorg/apache/james/mime4j/field/MailboxListField$Parser;
.super Ljava/lang/Object;
.source "MailboxListField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/MailboxListField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/james/mime4j/field/MailboxListField$Parser;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxListField$Parser;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 7
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 53
    const/4 v4, 0x0

    .line 54
    .local v4, mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;
    const/4 v5, 0x0

    .line 56
    .local v5, parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;
    :try_start_0
    invoke-static {p2}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressList;->flatten()Lorg/apache/james/mime4j/field/address/MailboxList;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 64
    :goto_0
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxListField;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/MailboxListField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 59
    .local v6, e:Lorg/apache/james/mime4j/field/address/parser/ParseException;
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxListField$Parser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxListField$Parser;->log:Lorg/apache/james/mime4j/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V

    .line 62
    :cond_0
    move-object v5, v6

    goto :goto_0
.end method
