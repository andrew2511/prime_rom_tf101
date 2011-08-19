.class Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field filename:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field indicator:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$RemoteContentListAdapter$ViewHolder;->this$1:Lcom/asus/DLNA/DLNA$RemoteContentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
