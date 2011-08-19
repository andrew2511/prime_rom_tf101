.class public abstract Lcom/android/contacts/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# instance fields
.field protected final mDefaultResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const v0, 0x7f02005b

    iput v0, p0, Lcom/android/contacts/ContactPhotoManager;->mDefaultResourceId:I

    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    const-class v0, Lcom/android/contacts/ContactPhotoManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 69
    const-string v1, "contactPhotos"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManager;

    .line 71
    .local v0, service:Lcom/android/contacts/ContactPhotoManager;
    if-nez v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    .line 73
    const-string v1, "ContactPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No contact photo service in context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract loadPhoto(Landroid/widget/ImageView;J)V
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;)V
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract resume()V
.end method
