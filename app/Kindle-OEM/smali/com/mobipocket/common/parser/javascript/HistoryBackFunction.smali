.class public Lcom/mobipocket/common/parser/javascript/HistoryBackFunction;
.super Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;
.source "HistoryBackFunction.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "history.back"

    return-object v0
.end method
