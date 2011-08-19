.class Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;Lcom/android/gallery3d/app/AlbumSetDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;-><init>(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataAdapter$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->access$200(Lcom/android/gallery3d/app/AlbumSetDataAdapter;)V

    .line 199
    return-void
.end method
