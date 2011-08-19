.class Lcom/android/calendar/AllInOneActivity$2;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$2;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity$2;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-static {v0}, Lcom/android/calendar/AllInOneActivity;->access$400(Lcom/android/calendar/AllInOneActivity;)V

    .line 149
    return-void
.end method
