.class public Lcom/android/exchange/adapter/Parser$EasParserException;
.super Ljava/io/IOException;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasParserException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/Parser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/Parser;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser$EasParserException;->this$0:Lcom/android/exchange/adapter/Parser;

    .line 121
    const-string v0, "WBXML format error"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method constructor <init>(Lcom/android/exchange/adapter/Parser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "reason"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser$EasParserException;->this$0:Lcom/android/exchange/adapter/Parser;

    .line 125
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    return-void
.end method
