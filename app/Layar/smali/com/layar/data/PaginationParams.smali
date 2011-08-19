.class public Lcom/layar/data/PaginationParams;
.super Ljava/lang/Object;
.source "PaginationParams.java"


# instance fields
.field public hasMorePages:Z

.field public pageKey:Ljava/lang/String;

.field public query:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 6
    iput-object v1, p0, Lcom/layar/data/PaginationParams;->query:Ljava/lang/String;

    .line 3
    return-void
.end method
