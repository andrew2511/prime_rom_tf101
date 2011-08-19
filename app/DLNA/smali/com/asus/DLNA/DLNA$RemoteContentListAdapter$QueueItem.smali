.class Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;
.super Ljava/lang/Object;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueItem"
.end annotation


# instance fields
.field itemPOS:I

.field final synthetic this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;


# direct methods
.method private constructor <init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;Lcom/asus/DLNA/DLNA$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1870
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$QueueItem;-><init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V

    return-void
.end method
