.class public Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;
.super Ljava/lang/Object;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteEvent"
.end annotation


# static fields
.field public static final TYPE_CANDIDATES:I = 0x1

.field public static final TYPE_CHAR:I = 0x2

.field public static final TYPE_INSTANT_GESTURE:I = 0x4

.field public static final TYPE_TEXT:I = 0x3


# instance fields
.field public mData:Ljava/lang/Object;

.field public mType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;->mType:I

    .line 27
    iput-object p2, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;->mData:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/xt9/input/WriteRecognizerListener$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;-><init>()V

    return-void
.end method
