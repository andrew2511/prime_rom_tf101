.class Lcom/android/server/am/ActivityManagerService$Identity;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Identity"
.end annotation


# instance fields
.field public pid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;II)V
    .registers 4
    .parameter
    .parameter "_pid"
    .parameter "_uid"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$Identity;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$Identity;->pid:I

    .line 745
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$Identity;->uid:I

    .line 746
    return-void
.end method