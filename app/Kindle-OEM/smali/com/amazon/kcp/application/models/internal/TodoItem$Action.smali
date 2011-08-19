.class public Lcom/amazon/kcp/application/models/internal/TodoItem$Action;
.super Ljava/lang/Object;
.source "TodoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/TodoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const-string v1, "GET"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 44
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 48
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const-string v1, "UPD_ANOT"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 52
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const-string v1, "UPD_LPRD"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 56
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const-string v1, "DEL"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 60
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const-string v1, "SND"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 64
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const-string v1, "SET"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 68
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const-string v1, "UPLOAD"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 73
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->s:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->s:Ljava/lang/String;

    return-object v0
.end method
