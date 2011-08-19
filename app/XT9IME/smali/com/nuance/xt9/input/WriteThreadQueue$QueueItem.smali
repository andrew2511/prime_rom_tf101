.class public Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
.super Ljava/lang/Object;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueItem"
.end annotation


# static fields
.field public static final ITEM_TYPE_ARC:I = 0x1

.field public static final ITEM_TYPE_CHAR:I = 0x3

.field public static final ITEM_TYPE_EXIT:I = 0x0

.field public static final ITEM_TYPE_RECOGNIZE:I = 0x2

.field public static final ITEM_TYPE_SETTINGS:I = 0x5

.field public static final ITEM_TYPE_TEXT:I = 0x4


# instance fields
.field public mData:Ljava/lang/Object;

.field public mType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;->mType:I

    .line 156
    iput-object p2, p0, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;->mData:Ljava/lang/Object;

    .line 157
    return-void
.end method
