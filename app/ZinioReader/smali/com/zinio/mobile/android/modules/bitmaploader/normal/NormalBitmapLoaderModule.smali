.class public Lcom/zinio/mobile/android/modules/bitmaploader/normal/NormalBitmapLoaderModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/modules/bitmaploader/BitmapLoaderModule;


# instance fields
.field private a:Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/zinio/mobile/android/resources/a;

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 7
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/bitmaploader/normal/NormalBitmapLoaderModule;->a:Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/modules/bitmaploader/normal/NormalBitmapLoaderModule;->a:Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;

    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/bitmaploader/normal/NormalBitmapLoaderModule;->a:Lcom/zinio/mobile/android/modules/bitmaploader/normal/a;

    return-object v0
.end method
