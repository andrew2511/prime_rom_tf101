.class public Lcom/infraware/filemanager/webstorage/WebStorageDefine$ServiceType;
.super Ljava/lang/Object;
.source "WebStorageDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/webstorage/WebStorageDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceType"
.end annotation


# static fields
.field public static final WS_SERVICE_BOXNET:I = 0x2

.field public static final WS_SERVICE_DROPBOX:I = 0x3

.field public static final WS_SERVICE_GOOGLE:I = 0x1

.field public static final WS_SERVICE_LOCAL:I


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/webstorage/WebStorageDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/webstorage/WebStorageDefine;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/WebStorageDefine$ServiceType;->this$0:Lcom/infraware/filemanager/webstorage/WebStorageDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
