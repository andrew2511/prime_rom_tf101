.class public Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;
.super Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharWriteEvent"
.end annotation


# instance fields
.field public mChar:C


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;-><init>(Lcom/nuance/xt9/input/WriteRecognizerListener$1;)V

    .line 76
    return-void
.end method

.method public constructor <init>(C)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 69
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 70
    iput-char p1, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$CharWriteEvent;->mChar:C

    .line 71
    return-void
.end method
