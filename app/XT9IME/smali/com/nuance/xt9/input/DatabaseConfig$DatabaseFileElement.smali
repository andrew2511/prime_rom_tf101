.class Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/DatabaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseFileElement"
.end annotation


# instance fields
.field mAssetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDatabaseFile:Ljava/lang/String;

.field mDatabaseID:Ljava/lang/String;

.field mDatabaseTag:Ljava/lang/String;

.field mMultiPartFile:Z

.field mRefresh:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "databaseTag"
    .parameter "databaseID"
    .parameter "databaseFile"
    .parameter "refresh"
    .parameter "multiPartFile"

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mAssetList:Ljava/util/List;

    .line 375
    iput-object p1, p0, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseTag:Ljava/lang/String;

    .line 376
    iput-object p3, p0, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    .line 377
    iput-object p2, p0, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mDatabaseID:Ljava/lang/String;

    .line 378
    iput-boolean p4, p0, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mRefresh:Z

    .line 379
    iput-boolean p5, p0, Lcom/nuance/xt9/input/DatabaseConfig$DatabaseFileElement;->mMultiPartFile:Z

    .line 380
    return-void
.end method
