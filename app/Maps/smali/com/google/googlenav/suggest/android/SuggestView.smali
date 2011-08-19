.class public Lcom/google/googlenav/suggest/android/SuggestView;
.super Landroid/widget/AutoCompleteTextView;


# instance fields
.field protected a:Z

.field private final b:Landroid/graphics/drawable/AnimationDrawable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Landroid/view/inputmethod/InputMethodManager;

.field private final i:Ljava/lang/Runnable;

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Runnable;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->a:Z

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Lcom/google/googlenav/suggest/android/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/j;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/suggest/android/i;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/i;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/suggest/android/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/d;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->k:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->l:I

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->a:Z

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Lcom/google/googlenav/suggest/android/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/j;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/suggest/android/i;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/i;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/suggest/android/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/d;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->k:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->l:I

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/SuggestView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/suggest/android/SuggestView;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/SuggestView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/suggest/android/SuggestView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->d()V

    new-instance v0, Lcom/google/googlenav/suggest/android/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/e;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/google/googlenav/suggest/android/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/b;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/google/googlenav/suggest/android/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/c;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->V()Lk/j;

    move-result-object v1

    invoke-interface {v1}, Lk/j;->a()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move v4, v8

    move v5, v8

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-interface {v1, v0}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-le v0, v5, :cond_1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_1
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-le v5, v4, :cond_0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :cond_0
    iget-object v5, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v3, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v8, v8, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v9, v9, v0, v9}, Lcom/google/googlenav/suggest/android/SuggestView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v8}, Lcom/google/googlenav/suggest/android/SuggestView;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    const/16 v1, 0xff

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->invalidateSelf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static synthetic d(Lcom/google/googlenav/suggest/android/SuggestView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/suggest/android/SuggestProvider;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    move-object v4, v3

    :goto_0
    const-string v5, ""

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/suggest/android/h;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/google/googlenav/suggest/android/h;-><init>(Lcom/google/googlenav/suggest/android/SuggestView;Landroid/content/Context;Landroid/database/Cursor;Lcom/google/googlenav/suggest/android/j;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    const-string v4, "return_immediately"

    aput-object v4, v3, v6

    move-object v4, v3

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/googlenav/suggest/android/SuggestView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/google/googlenav/suggest/android/SuggestView;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->l:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/CursorAdapter;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->l:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/google/googlenav/suggest/android/SuggestView;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->g:Z

    return-void
.end method

.method public enoughToFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPerformingCompletion()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestView;->d:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/h;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/suggest/android/SuggestView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/h;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->d:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDropDown()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->e:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->h:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestView;->a:Z

    :cond_1
    return-void
.end method
