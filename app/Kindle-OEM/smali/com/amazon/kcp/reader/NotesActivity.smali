.class public Lcom/amazon/kcp/reader/NotesActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "NotesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;,
        Lcom/amazon/kcp/reader/NotesActivity$Note;
    }
.end annotation


# static fields
.field public static final EDIT_NOTE_REQUESTED_INDEX:Ljava/lang/String; = "editNoteAtIndex"

.field public static final SELECTED_ANNOTATION_INDEX:Ljava/lang/String; = "selectedAnnotationIndex"


# instance fields
.field private book:Lcom/amazon/kcp/reader/models/IBookDocument;

.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/NotesActivity;)Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/NotesActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amazon/kcp/reader/NotesActivity;->createNotes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/NotesActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private createNotes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/reader/NotesActivity$Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 239
    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IAnnotation;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 237
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :pswitch_0
    new-instance v3, Lcom/amazon/kcp/reader/NotesActivity$Note;

    aget-object v4, v0, v2

    invoke-direct {v3, v2, v4}, Lcom/amazon/kcp/reader/NotesActivity$Note;-><init>(ILcom/amazon/kcp/reader/models/IAnnotation;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_0
    return-object v1

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private populateContextMenu(Landroid/view/ContextMenu;Lcom/amazon/kcp/reader/NotesActivity$Note;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0b00eb

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    .line 142
    iget-object v0, p2, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IAnnotation;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f0

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserLocation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    .line 163
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 171
    const v1, 0x7f0b00f1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/reader/NotesActivity$2;

    invoke-direct {v2, p0, p2}, Lcom/amazon/kcp/reader/NotesActivity$2;-><init>(Lcom/amazon/kcp/reader/NotesActivity;Lcom/amazon/kcp/reader/NotesActivity$Note;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 186
    if-eqz v0, :cond_0

    .line 189
    const v0, 0x7f0b00f2

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/NotesActivity$3;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/reader/NotesActivity$3;-><init>(Lcom/amazon/kcp/reader/NotesActivity;Lcom/amazon/kcp/reader/NotesActivity$Note;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 205
    :cond_0
    const v0, 0x7f0b00f3

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/NotesActivity$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/amazon/kcp/reader/NotesActivity$4;-><init>(Lcom/amazon/kcp/reader/NotesActivity;Lcom/amazon/kcp/reader/NotesActivity$Note;I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 227
    return-void

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserLocation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    .line 148
    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserLocation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v5

    .line 154
    goto :goto_0

    .line 156
    :pswitch_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserLocation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    .line 159
    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getOrientation()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/NotesActivity;->setRequestedOrientation(I)V

    .line 72
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 73
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/NotesActivity;->setContentView(I)V

    .line 75
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/NotesActivity;->setResult(I)V

    .line 80
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->finish()V

    .line 102
    :goto_0
    return-void

    .line 84
    :cond_0
    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/NotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->listView:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/NotesActivity;->createNotes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;-><init>(Lcom/amazon/kcp/reader/NotesActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/kcp/reader/NotesActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/NotesActivity$1;-><init>(Lcom/amazon/kcp/reader/NotesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/NotesActivity;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 122
    const v4, 0x7f0c0094

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/NotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 125
    .local v3, position:I
    move-object v0, p2

    check-cast v0, Landroid/widget/AdapterView;

    move-object v2, v0

    .line 127
    .local v2, annotationView:Landroid/widget/AdapterView;
    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/NotesActivity$Note;

    .line 129
    .local v1, annotation:Lcom/amazon/kcp/reader/NotesActivity$Note;
    invoke-direct {p0, p1, v1, v3}, Lcom/amazon/kcp/reader/NotesActivity;->populateContextMenu(Landroid/view/ContextMenu;Lcom/amazon/kcp/reader/NotesActivity$Note;I)V

    .line 131
    .end local v1           #annotation:Lcom/amazon/kcp/reader/NotesActivity$Note;
    .end local v2           #annotationView:Landroid/widget/AdapterView;
    .end local v3           #position:I
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
