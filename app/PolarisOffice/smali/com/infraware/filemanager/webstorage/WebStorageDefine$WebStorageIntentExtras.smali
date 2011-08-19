.class public Lcom/infraware/filemanager/webstorage/WebStorageDefine$WebStorageIntentExtras;
.super Ljava/lang/Object;
.source "WebStorageDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/webstorage/WebStorageDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebStorageIntentExtras"
.end annotation


# static fields
.field public static final WS_EXTRA_LOGIN_FAIL:Ljava/lang/String; = "login_fail"


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/webstorage/WebStorageDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/webstorage/WebStorageDefine;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/WebStorageDefine$WebStorageIntentExtras;->this$0:Lcom/infraware/filemanager/webstorage/WebStorageDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
