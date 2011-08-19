.class Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumDataAdapter;Lcom/android/gallery3d/app/AlbumDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;-><init>(Lcom/android/gallery3d/app/AlbumDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 6

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$100(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumDataAdapter$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$200(Lcom/android/gallery3d/app/AlbumDataAdapter;)I

    move-result v3

    const-wide/16 v4, 0x64

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/app/AlbumDataAdapter;->access$300(Lcom/android/gallery3d/app/AlbumDataAdapter;IIIJ)V

    .line 198
    return-void
.end method
