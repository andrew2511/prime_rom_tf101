.class Lcom/android/calendar/alerts/AlertActivity$1;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/AlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    .line 180
    .local v0, alertActivity:Lcom/android/calendar/alerts/AlertActivity;
    invoke-virtual {v0, p2}, Lcom/android/calendar/alerts/AlertActivity;->getItemForView(Landroid/view/View;)Landroid/database/Cursor;

    move-result-object v2

    .line 183
    .local v2, cursor:Landroid/database/Cursor;
    iget-object v10, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/android/calendar/alerts/AlertActivity;->access$500(Lcom/android/calendar/alerts/AlertActivity;J)V

    .line 185
    const/4 v10, 0x6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v6, v10

    .line 186
    .local v6, id:J
    const/4 v10, 0x4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 187
    .local v8, startMillis:J
    const/4 v10, 0x5

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 188
    .local v3, endMillis:J
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v5, eventIntent:Landroid/content/Intent;
    sget-object v10, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 190
    .local v1, builder:Landroid/net/Uri$Builder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "events/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 191
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 192
    const-string v10, "beginTime"

    invoke-virtual {v5, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 193
    const-string v10, "endTime"

    invoke-virtual {v5, v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    invoke-virtual {v0, v5}, Lcom/android/calendar/alerts/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {v0}, Lcom/android/calendar/alerts/AlertActivity;->finish()V

    .line 197
    return-void
.end method
