.class final Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;
.super Landroid/os/AsyncTask;
.source "CollectionVolumesEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/CollectionVolumesEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mCollectionId:J

.field private final mVolumeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/model/CollectionVolumesEditor;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/model/CollectionVolumesEditor;Landroid/accounts/Account;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "account"
    .parameter "collectionId"
    .parameter "volumeId"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->this$0:Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->mAccount:Landroid/accounts/Account;

    .line 143
    iput-wide p3, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->mCollectionId:J

    .line 144
    iput-object p5, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->mVolumeId:Ljava/lang/String;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/model/CollectionVolumesEditor;Landroid/accounts/Account;JLjava/lang/String;Lcom/google/android/apps/books/model/CollectionVolumesEditor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;-><init>(Lcom/google/android/apps/books/model/CollectionVolumesEditor;Landroid/accounts/Account;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "voids"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->this$0:Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    iget-object v1, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->mAccount:Landroid/accounts/Account;

    iget-wide v2, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->mCollectionId:J

    iget-object v4, p0, Lcom/google/android/apps/books/model/CollectionVolumesEditor$RemoveTask;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->synchronousRemove(Landroid/accounts/Account;JLjava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method
