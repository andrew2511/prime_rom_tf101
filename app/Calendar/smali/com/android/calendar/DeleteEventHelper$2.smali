.class Lcom/android/calendar/DeleteEventHelper$2;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/DeleteEventHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$300(Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/CalendarEventModel;

    move-result-object v0

    iget-wide v8, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 126
    .local v8, id:J
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 127
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$400(Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/AsyncQueryService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v1}, Lcom/android/calendar/DeleteEventHelper;->access$400(Lcom/android/calendar/DeleteEventHelper;)Lcom/android/calendar/AsyncQueryService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 128
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$500(Lcom/android/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$500(Lcom/android/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$600(Lcom/android/calendar/DeleteEventHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$2;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$700(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 134
    :cond_1
    return-void
.end method
