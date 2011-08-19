.class Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;
.super Landroid/widget/CursorAdapter;
.source "Act_DownloadPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Act_DownloadPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Act_DownloadPage;


# direct methods
.method public constructor <init>(Lcom/asus/vibe2/Act_DownloadPage;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 160
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$402(Lcom/asus/vibe2/Act_DownloadPage;I)I

    .line 161
    const-string v0, "title"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$502(Lcom/asus/vibe2/Act_DownloadPage;I)I

    .line 162
    const-string v0, "description"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$602(Lcom/asus/vibe2/Act_DownloadPage;I)I

    .line 163
    const-string v0, "status"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$702(Lcom/asus/vibe2/Act_DownloadPage;I)I

    .line 164
    const-string v0, "bytes_so_far"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$802(Lcom/asus/vibe2/Act_DownloadPage;I)I

    .line 165
    const-string v0, "total_size"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$902(Lcom/asus/vibe2/Act_DownloadPage;I)I

    .line 166
    const-string v0, "media_type"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$1002(Lcom/asus/vibe2/Act_DownloadPage;I)I

    .line 167
    const-string v0, "local_uri"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$1102(Lcom/asus/vibe2/Act_DownloadPage;I)I

    .line 168
    const-string v0, "reason"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Act_DownloadPage;->access$1202(Lcom/asus/vibe2/Act_DownloadPage;I)I

    .line 169
    return-void
.end method

.method private retrieveAndSetIcon(Landroid/widget/ImageView;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "iconView"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v10, 0x7f020049

    .line 213
    iget-object v7, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v7}, Lcom/asus/vibe2/Act_DownloadPage;->access$700(Lcom/asus/vibe2/Act_DownloadPage;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v5, v7

    .line 214
    .local v5, status:J
    iget-object v7, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v7}, Lcom/asus/vibe2/Act_DownloadPage;->access$1000(Lcom/asus/vibe2/Act_DownloadPage;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, mediaType:Ljava/lang/String;
    const-wide/16 v7, 0x10

    cmp-long v7, v5, v7

    if-nez v7, :cond_1

    .line 216
    const v7, 0x7f02003f

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 218
    .restart local p0
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 220
    const-string v7, "application/vnd.oma.drm.message"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 221
    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 223
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "file"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 226
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/high16 v7, 0x1

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 229
    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 231
    :cond_3
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v7, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 232
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "holder"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v11, 0x7f080019

    const/16 v8, 0x64

    const/4 v10, 0x1

    const v7, 0x7f08001a

    const v9, 0x102000d

    .line 183
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v6}, Lcom/asus/vibe2/Act_DownloadPage;->access$400(Lcom/asus/vibe2/Act_DownloadPage;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 184
    const v5, 0x1020014

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v6}, Lcom/asus/vibe2/Act_DownloadPage;->access$500(Lcom/asus/vibe2/Act_DownloadPage;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const v5, 0x1020015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v6}, Lcom/asus/vibe2/Act_DownloadPage;->access$600(Lcom/asus/vibe2/Act_DownloadPage;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v5, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v5}, Lcom/asus/vibe2/Act_DownloadPage;->access$800(Lcom/asus/vibe2/Act_DownloadPage;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 187
    .local v0, currentByteSize:I
    iget-object v5, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v5}, Lcom/asus/vibe2/Act_DownloadPage;->access$900(Lcom/asus/vibe2/Act_DownloadPage;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 188
    .local v4, totalByteSize:I
    iget-object v5, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v5}, Lcom/asus/vibe2/Act_DownloadPage;->access$700(Lcom/asus/vibe2/Act_DownloadPage;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v2, v5

    .line 189
    .local v2, status:J
    const-wide/16 v5, 0x2

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    .line 190
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f04003a

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 191
    const-wide/high16 v5, 0x4059

    int-to-double v7, v0

    mul-double/2addr v5, v7

    int-to-double v7, v4

    div-double/2addr v5, v7

    double-to-int v1, v5

    .line 192
    .local v1, percent:I
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 194
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 209
    .end local v1           #percent:I
    :goto_0
    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {p0, v5, p2, p3}, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->retrieveAndSetIcon(Landroid/widget/ImageView;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 210
    return-void

    .line 195
    :cond_0
    const-wide/16 v5, 0x8

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    .line 196
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f040038

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 197
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f04002a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 198
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 199
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    goto :goto_0

    .line 200
    :cond_1
    const-wide/16 v5, 0x10

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    .line 201
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f040037

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 202
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f04002b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 203
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 204
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 207
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 173
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 174
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, holder:Landroid/view/View;
    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 176
    const v2, 0x7f08001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->this$0:Lcom/asus/vibe2/Act_DownloadPage;

    invoke-static {v3}, Lcom/asus/vibe2/Act_DownloadPage;->access$1300(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p0, v0, p1, p2}, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 178
    return-object v0
.end method
