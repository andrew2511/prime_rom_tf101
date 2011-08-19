.class public Lcom/google/android/music/store/MediaStoreImportService$LocalBinder;
.super Landroid/os/Binder;
.source "MediaStoreImportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MediaStoreImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/store/MediaStoreImportService;


# direct methods
.method public constructor <init>(Lcom/google/android/music/store/MediaStoreImportService;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/music/store/MediaStoreImportService$LocalBinder;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/google/android/music/store/MediaStoreImportService;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService$LocalBinder;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    return-object v0
.end method
