.class Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;
.super Ljava/lang/Object;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA$LocalContentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueItem"
.end annotation


# instance fields
.field itemPOS:I

.field final synthetic this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;


# direct methods
.method private constructor <init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;Lcom/asus/DLNA/DLNA$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1487
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$QueueItem;-><init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)V

    return-void
.end method
