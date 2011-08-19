.class public Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;
.super Ljava/lang/Object;
.source "StatefulTodoItemWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field public static final CDE_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

.field public static final FILE_SYSTEM_FULL:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

.field public static final NO_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

.field public static final SERVER_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

.field public static final TIMEOUT_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

.field public static final UNRECOGNIZED_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    const-string v1, "NoError"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->NO_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 77
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    const-string v1, "ServerError"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->SERVER_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 81
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    const-string v1, "TimeoutError"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->TIMEOUT_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 85
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    const-string v1, "CDEError"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->CDE_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 89
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    const-string v1, "UnrecognizedError"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->UNRECOGNIZED_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    .line 93
    new-instance v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    const-string v1, "FileSystemFullError"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->FILE_SYSTEM_FULL:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->s:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->s:Ljava/lang/String;

    return-object v0
.end method
