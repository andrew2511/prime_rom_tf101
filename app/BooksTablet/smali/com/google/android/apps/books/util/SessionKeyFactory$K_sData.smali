.class public Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
.super Ljava/lang/Object;
.source "SessionKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/SessionKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "K_sData"
.end annotation


# instance fields
.field public final K_sVersion:Ljava/lang/String;

.field public final sessionKeyUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "version"
    .parameter "uri"

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p1, p0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    .line 555
    iput-object p2, p0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    .line 556
    return-void
.end method
