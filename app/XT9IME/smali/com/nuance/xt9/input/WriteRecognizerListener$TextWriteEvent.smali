.class public Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;
.super Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextWriteEvent"
.end annotation


# instance fields
.field public mText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;-><init>(Lcom/nuance/xt9/input/WriteRecognizerListener$1;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 55
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 56
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    .line 57
    return-void
.end method
