.class public Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
.super Ljava/lang/Object;
.source "SessionKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/SessionKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyUpgradeInfo"
.end annotation


# instance fields
.field public encryptedK_sClause:[B

.field public sessionKeyId:J

.field final synthetic this$0:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field public volumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->this$0:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
