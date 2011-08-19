.class public Lcom/asus/filemanager/toolbar/PathIndicator;
.super Ljava/lang/Object;
.source "PathIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/toolbar/PathIndicator$1;,
        Lcom/asus/filemanager/toolbar/PathIndicator$ViewTouchListener;,
        Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;,
        Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

.field private mPathBack:Landroid/widget/ImageButton;

.field private mPathLayout:Landroid/widget/LinearLayout;

.field private mPathListener:Lcom/asus/filemanager/toolbar/IPathListener;

.field private mViewClickListener:Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;

.field private mViewTouchListener:Lcom/asus/filemanager/toolbar/PathIndicator$ViewTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/asus/filemanager/toolbar/IPathListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "pathmain"
    .parameter "l"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mCurrentPath:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mContext:Landroid/content/Context;

    .line 100
    const v0, 0x7f080018

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mPathBack:Landroid/widget/ImageButton;

    .line 101
    const v0, 0x7f080019

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mPathLayout:Landroid/widget/LinearLayout;

    .line 102
    iput-object p3, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mPathListener:Lcom/asus/filemanager/toolbar/IPathListener;

    .line 103
    new-instance v0, Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;

    invoke-direct {v0, p0, v1}, Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;-><init>(Lcom/asus/filemanager/toolbar/PathIndicator;Lcom/asus/filemanager/toolbar/PathIndicator$1;)V

    iput-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mViewClickListener:Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;

    .line 104
    new-instance v0, Lcom/asus/filemanager/toolbar/PathIndicator$ViewTouchListener;

    invoke-direct {v0, p0, v1}, Lcom/asus/filemanager/toolbar/PathIndicator$ViewTouchListener;-><init>(Lcom/asus/filemanager/toolbar/PathIndicator;Lcom/asus/filemanager/toolbar/PathIndicator$1;)V

    iput-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mViewTouchListener:Lcom/asus/filemanager/toolbar/PathIndicator$ViewTouchListener;

    .line 105
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mPathBack:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mViewClickListener:Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object p4, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method private AddLevel(Ljava/io/File;)V
    .locals 6
    .parameter "f"

    .prologue
    const/4 v5, 0x0

    .line 167
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, t:Landroid/widget/TextView;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    .local v0, ss:Landroid/text/SpannableString;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 171
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 174
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v2, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mViewClickListener:Lcom/asus/filemanager/toolbar/PathIndicator$ViewClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mViewTouchListener:Lcom/asus/filemanager/toolbar/PathIndicator$ViewTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    iget-object v2, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mPathLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/asus/filemanager/toolbar/PathIndicator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/filemanager/toolbar/PathIndicator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/filemanager/toolbar/PathIndicator;)Lcom/asus/filemanager/toolbar/IPathListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mPathListener:Lcom/asus/filemanager/toolbar/IPathListener;

    return-object v0
.end method


# virtual methods
.method public ShowPath(Ljava/io/File;)Z
    .locals 5
    .parameter "f"

    .prologue
    .line 115
    iget-object v3, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const/4 v3, 0x0

    .line 140
    :goto_0
    return v3

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/asus/filemanager/toolbar/PathIndicator;->registerObserver(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mPathLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 122
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 123
    .local v0, mFileStack:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/io/File;>;"
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 125
    .local v1, parent:Ljava/io/File;
    :goto_1
    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 131
    new-instance v3, Ljava/io/File;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/asus/filemanager/toolbar/PathIndicator;->AddLevel(Ljava/io/File;)V

    .line 132
    :goto_2
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 135
    .local v2, temp:Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/asus/filemanager/toolbar/PathIndicator;->AddLevel(Ljava/io/File;)V

    goto :goto_2

    .line 138
    .end local v2           #temp:Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mCurrentPath:Ljava/lang/String;

    .line 140
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method public registerObserver(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    invoke-virtual {v0}, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;->stopWatching()V

    .line 148
    new-instance v0, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    invoke-direct {v0, p0, p1}, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;-><init>(Lcom/asus/filemanager/toolbar/PathIndicator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    .line 149
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    invoke-virtual {v0}, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;->startWatching()V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    invoke-direct {v0, p0, p1}, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;-><init>(Lcom/asus/filemanager/toolbar/PathIndicator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    .line 152
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    invoke-virtual {v0}, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;->startWatching()V

    goto :goto_0
.end method

.method public unregisterObserver()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    invoke-virtual {v0}, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;->stopWatching()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/filemanager/toolbar/PathIndicator;->mObserver:Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;

    .line 163
    :cond_0
    return-void
.end method
