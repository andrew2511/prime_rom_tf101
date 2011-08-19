.class Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;
.super Landroid/widget/BaseAdapter;
.source "Act_VibeMain.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Act_VibeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibeTabAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/asus/vibe2/Act_VibeMain;


# direct methods
.method public constructor <init>(Lcom/asus/vibe2/Act_VibeMain;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->mContext:Landroid/content/Context;

    .line 213
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iput-object p2, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->mContext:Landroid/content/Context;

    .line 215
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 253
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 255
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v0}, Lcom/asus/vibe2/Act_VibeMain;->access$000(Lcom/asus/vibe2/Act_VibeMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2, p3}, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/asus/vibe2/Frag_TabContent;
    .locals 1
    .parameter "pos"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v0}, Lcom/asus/vibe2/Act_VibeMain;->access$000(Lcom/asus/vibe2/Act_VibeMain;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v0}, Lcom/asus/vibe2/Act_VibeMain;->access$000(Lcom/asus/vibe2/Act_VibeMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v0}, Lcom/asus/vibe2/Act_VibeMain;->access$000(Lcom/asus/vibe2/Act_VibeMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/vibe2/Frag_TabContent;

    move-object v0, p0

    .line 225
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->getItem(I)Lcom/asus/vibe2/Frag_TabContent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v0}, Lcom/asus/vibe2/Act_VibeMain;->access$000(Lcom/asus/vibe2/Act_VibeMain;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v0}, Lcom/asus/vibe2/Act_VibeMain;->access$000(Lcom/asus/vibe2/Act_VibeMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 230
    int-to-long v0, p1

    .line 232
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 237
    if-nez p2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x1090003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 242
    .local v1, text:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->getItem(I)Lcom/asus/vibe2/Frag_TabContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/vibe2/Frag_TabContent;->getTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-object v1

    .line 240
    .end local v1           #text:Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .restart local v1       #text:Landroid/widget/TextView;
    goto :goto_0
.end method
