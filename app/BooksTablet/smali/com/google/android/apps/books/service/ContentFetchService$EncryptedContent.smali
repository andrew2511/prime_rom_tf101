.class public Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;
.super Ljava/lang/Object;
.source "ContentFetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/ContentFetchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncryptedContent"
.end annotation


# instance fields
.field public final encryptedData:[B

.field public final sessionKeyUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/apps/books/service/ContentFetchService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/service/ContentFetchService;[BLandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "encryptedData"
    .parameter "sessionKeyUri"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p2, p0, Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;->encryptedData:[B

    .line 592
    iput-object p3, p0, Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;->sessionKeyUri:Landroid/net/Uri;

    .line 593
    return-void
.end method
