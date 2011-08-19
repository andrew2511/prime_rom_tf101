.class public Lcom/google/android/gm/ConversationHeaderViewModel;
.super Ljava/lang/Object;
.source "ConversationHeaderViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    }
.end annotation


# static fields
.field static sConversationHeaderMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/ConversationHeaderViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public conversationId:J

.field public dateMs:J

.field dateText:Ljava/lang/String;

.field dateWidth:I

.field faded:Z

.field fixedFragmentsWidth:I

.field fontColor:I

.field public fromSnippetInstructions:Ljava/lang/String;

.field hasAttachments:Z

.field labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

.field public labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field

.field private mHashCode:I

.field public maxMessageId:J

.field paperclipWidth:I

.field public personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

.field personalLevelBitmap:Landroid/graphics/Bitmap;

.field public rawLabels:Ljava/lang/String;

.field final senderFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;",
            ">;"
        }
    .end annotation
.end field

.field sendersLinesCount:I

.field sendersText:Ljava/lang/String;

.field sendersWidth:I

.field public snippet:Ljava/lang/String;

.field starBitmap:Landroid/graphics/Bitmap;

.field starred:Z

.field public subject:Ljava/lang/String;

.field subjectLayout:Landroid/text/StaticLayout;

.field subjectLinesCount:I

.field subjectText:Landroid/text/SpannableStringBuilder;

.field subjectWidth:I

.field totalFragmentsWidth:I

.field public viewMode:I

.field public viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/ConversationHeaderViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->faded:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->viewMode:I

    .line 151
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    .line 152
    iput v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->totalFragmentsWidth:I

    .line 153
    iput v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->fixedFragmentsWidth:I

    .line 154
    return-void
.end method

.method static forConversationId(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationHeaderViewModel;
    .locals 5
    .parameter "account"
    .parameter "conversationId"
    .parameter "cursor"

    .prologue
    .line 122
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .local v1, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v2, Lcom/google/android/gm/ConversationHeaderViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    monitor-enter v2

    .line 124
    :try_start_0
    sget-object v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationHeaderViewModel;

    .line 125
    .local v0, header:Lcom/google/android/gm/ConversationHeaderViewModel;
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/google/android/gm/ConversationHeaderViewModel;

    .end local v0           #header:Lcom/google/android/gm/ConversationHeaderViewModel;
    invoke-direct {v0}, Lcom/google/android/gm/ConversationHeaderViewModel;-><init>()V

    .line 127
    .restart local v0       #header:Lcom/google/android/gm/ConversationHeaderViewModel;
    sget-object v3, Lcom/google/android/gm/ConversationHeaderViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    if-eqz p3, :cond_1

    .line 131
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->conversationId:J

    .line 132
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getMaxServerMessageId()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->maxMessageId:J

    .line 133
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->hasAttachments()Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->hasAttachments:Z

    .line 134
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getDateMs()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateMs:J

    .line 135
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getPersonalLevel()Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 136
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->subject:Ljava/lang/String;

    .line 137
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSnippet()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->snippet:Ljava/lang/String;

    .line 138
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labels:Ljava/util/Map;

    .line 139
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getRawLabels()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->rawLabels:Ljava/lang/String;

    .line 140
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getFromSnippetInstructions()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->fromSnippetInstructions:Ljava/lang/String;

    .line 141
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->faded:Z

    .line 143
    :cond_1
    iget-object v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    if-nez v3, :cond_2

    .line 144
    new-instance v3, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    invoke-direct {v3}, Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;-><init>()V

    iput-object v3, v0, Lcom/google/android/gm/ConversationHeaderViewModel;->labelDisplayer:Lcom/google/android/gm/CanvasConversationHeaderView$ConversationHeaderLabelDisplayer;

    .line 146
    :cond_2
    monitor-exit v2

    return-object v0

    .line 147
    .end local v0           #header:Lcom/google/android/gm/ConversationHeaderViewModel;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getHashCode(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "date"
    .parameter "rawLabels"
    .parameter "fromSnippetInstructions"

    .prologue
    .line 192
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/Utils;->getTimeString(Landroid/content/Context;JZLandroid/text/TextPaint;F)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, dateText:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method addSenderFragment(IILandroid/text/style/CharacterStyle;ZLandroid/text/TextPaint;)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "style"
    .parameter "isFixed"
    .parameter "paint"

    .prologue
    .line 167
    new-instance v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->sendersText:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;-><init>(IILjava/lang/CharSequence;Landroid/text/style/CharacterStyle;ZLandroid/text/TextPaint;)V

    .line 169
    .local v0, senderFragment:Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->totalFragmentsWidth:I

    iget v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->width:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->totalFragmentsWidth:I

    .line 171
    iget v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->fixedFragmentsWidth:I

    if-eqz p4, :cond_0

    iget v2, v0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->width:I

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->fixedFragmentsWidth:I

    .line 172
    return-void

    .line 171
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method clearSenderFragments()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    iput v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->totalFragmentsWidth:I

    .line 180
    iput v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->fixedFragmentsWidth:I

    .line 181
    return-void
.end method

.method isDataValid(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 214
    iget v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->mHashCode:I

    iget-wide v1, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateMs:J

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->rawLabels:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->fromSnippetInstructions:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/android/gm/ConversationHeaderViewModel;->getHashCode(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method validate(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->dateMs:J

    iget-object v2, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->rawLabels:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->fromSnippetInstructions:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gm/ConversationHeaderViewModel;->getHashCode(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ConversationHeaderViewModel;->mHashCode:I

    .line 204
    return-void
.end method
