.class public Lh/fJ;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field private A:Lcom/google/android/apps/plusone/widgets/ActionButton;

.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/inputmethod/InputMethodManager;

.field private c:Lh/R;

.field private d:Landroid/widget/ArrayAdapter;

.field private e:Ljava/lang/Boolean;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ListView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/EditText;

.field private x:Lcom/google/android/apps/circles/people/AudienceView;

.field private y:Landroid/widget/CheckBox;

.field private z:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/fJ;-><init>(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/fJ;->e:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lh/fJ;)Lh/R;
    .locals 1

    iget-object v0, p0, Lh/fJ;->c:Lh/R;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0f0036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh/fJ;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lh/fJ;->g:Landroid/widget/TextView;

    const/16 v1, 0x7b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh/fJ;->h:Landroid/view/View;

    const v0, 0x7f0f0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lh/fJ;->i:Landroid/widget/ImageView;

    const v0, 0x7f0f0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh/fJ;->j:Landroid/view/View;

    iget-object v0, p0, Lh/fJ;->i:Landroid/widget/ImageView;

    new-instance v1, Lh/fs;

    invoke-direct {v1, p0}, Lh/fs;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x5c

    const-string v1, "cno"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic b(Lh/fJ;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lh/fJ;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0f0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/circles/people/AudienceView;

    iput-object v0, p0, Lh/fJ;->x:Lcom/google/android/apps/circles/people/AudienceView;

    iget-object v0, p0, Lh/fJ;->x:Lcom/google/android/apps/circles/people/AudienceView;

    new-instance v1, Lh/ft;

    invoke-direct {v1, p0}, Lh/ft;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/circles/people/AudienceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lh/fJ;->t:Landroid/view/ViewGroup;

    iget-object v0, p0, Lh/fJ;->t:Landroid/view/ViewGroup;

    new-instance v1, Lh/fu;

    invoke-direct {v1, p0}, Lh/fu;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh/fJ;->s:Landroid/view/View;

    const v0, 0x7f0f0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh/fJ;->u:Landroid/widget/TextView;

    const v0, 0x7f0f0075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh/fJ;->v:Landroid/widget/TextView;

    const v0, 0x7f0f0076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lh/fJ;->w:Landroid/widget/EditText;

    iget-object v0, p0, Lh/fJ;->w:Landroid/widget/EditText;

    const/16 v1, 0xa6

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x89

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lh/fJ;->y:Landroid/widget/CheckBox;

    iget-object v0, p0, Lh/fJ;->y:Landroid/widget/CheckBox;

    const/16 v1, 0xa1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->y:Landroid/widget/CheckBox;

    new-instance v1, Lh/fy;

    invoke-direct {v1, p0}, Lh/fy;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lh/fJ;->z:Landroid/widget/CheckBox;

    iget-object v0, p0, Lh/fJ;->z:Landroid/widget/CheckBox;

    const/16 v1, 0xa2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->z:Landroid/widget/CheckBox;

    new-instance v1, Lh/fx;

    invoke-direct {v1, p0}, Lh/fx;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plusone/widgets/ActionButton;

    iput-object v0, p0, Lh/fJ;->A:Lcom/google/android/apps/plusone/widgets/ActionButton;

    iget-object v0, p0, Lh/fJ;->A:Lcom/google/android/apps/plusone/widgets/ActionButton;

    const/16 v1, 0x84

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->A:Lcom/google/android/apps/plusone/widgets/ActionButton;

    new-instance v1, Lh/cg;

    invoke-direct {v1, p0}, Lh/cg;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0f007c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh/fJ;->l:Landroid/view/View;

    const v0, 0x7f0f0339

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lh/fJ;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lh/fJ;->m:Landroid/widget/EditText;

    const/16 v1, 0x3af

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->m:Landroid/widget/EditText;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lh/fJ;->m:Landroid/widget/EditText;

    new-instance v1, Lh/fq;

    invoke-direct {v1, p0}, Lh/fq;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lh/fJ;->m:Landroid/widget/EditText;

    new-instance v1, Lh/fr;

    invoke-direct {v1, p0}, Lh/fr;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0f033a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lh/fJ;->n:Landroid/widget/ImageButton;

    iget-object v0, p0, Lh/fJ;->n:Landroid/widget/ImageButton;

    new-instance v1, Lh/fv;

    invoke-direct {v1, p0}, Lh/fv;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lh/fJ;->o:Landroid/widget/ListView;

    const v0, 0x7f0f007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh/fJ;->p:Landroid/widget/TextView;

    invoke-direct {p0}, Lh/fJ;->k()V

    invoke-direct {p0}, Lh/fJ;->l()V

    new-instance v0, Lh/dl;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lh/dl;-><init>(Lh/fJ;Landroid/content/Context;Lh/fs;)V

    iput-object v0, p0, Lh/fJ;->d:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lh/fJ;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lh/fJ;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lh/fJ;->o:Landroid/widget/ListView;

    new-instance v1, Lh/fw;

    invoke-direct {v1, p0}, Lh/fw;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lh/fJ;->o:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method static synthetic c(Lh/fJ;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lh/fJ;->d:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0f006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh/fJ;->f:Landroid/view/View;

    const-string v0, "d"

    invoke-static {v0}, Lh/fJ;->a(Ljava/lang/String;)V

    const v0, 0x7f0f013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0f013f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x8c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8b

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lh/ce;

    invoke-direct {v2, p0}, Lh/ce;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic d(Lh/fJ;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lh/fJ;->b:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic e(Lh/fJ;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lh/fJ;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lh/fJ;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lh/fJ;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private k()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lh/fJ;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03000f

    iget-object v2, p0, Lh/fJ;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh/fJ;->q:Landroid/view/View;

    iget-object v0, p0, Lh/fJ;->q:Landroid/view/View;

    const v1, 0x7f0f0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lh/fJ;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lh/fJ;->q:Landroid/view/View;

    new-instance v1, Lh/cf;

    invoke-direct {v1, p0}, Lh/cf;-><init>(Lh/fJ;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lh/fJ;->a:Landroid/view/LayoutInflater;

    const v1, 0x1090004

    iget-object v2, p0, Lh/fJ;->o:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh/fJ;->r:Landroid/view/View;

    return-void
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fJ;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lh/fJ;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lh/fJ;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lh/fJ;->r:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030019

    return v0
.end method

.method public a(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lh/fJ;->k:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/aW;->a:Lcom/google/googlenav/ui/view/android/aW;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/aW;I)V

    iget-object v0, p0, Lh/fJ;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lh/fJ;->A:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh/fJ;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->v:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->A:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lh/fJ;->y:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lh/fJ;->y:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lh/fJ;->z:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lh/fJ;->z:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lh/fJ;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lh/fJ;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->A:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lh/fJ;->y:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lh/fJ;->y:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lh/fJ;->z:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lh/fJ;->z:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lh/fJ;->a:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lh/fJ;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lh/fJ;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lh/fJ;->c(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p2}, Lh/fJ;->a(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lh/fJ;->b(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V

    invoke-direct {p0, p2}, Lh/fJ;->b(Landroid/view/View;)V

    const v0, 0x7f0f006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lh/fJ;->k:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iget-object v0, p0, Lh/fJ;->k:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/aW;->a:Lcom/google/googlenav/ui/view/android/aW;

    const/16 v2, 0x3a9

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/aW;I)V

    return-void
.end method

.method public a(Lh/R;)V
    .locals 0

    iput-object p1, p0, Lh/fJ;->c:Lh/R;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lh/fJ;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/google/googlenav/h;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-direct {v2, v0}, Lcom/google/googlenav/h;-><init>(Law/e;)V

    iget-object v0, p0, Lh/fJ;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh/fJ;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lh/fJ;->y:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public b()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0033

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d0032

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lh/fJ;->k:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/aW;->a:Lcom/google/googlenav/ui/view/android/aW;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/aW;I)V

    iget-object v0, p0, Lh/fJ;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->i:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lh/fJ;->A:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lh/fJ;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh/fJ;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lh/fJ;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lh/fJ;->x:Lcom/google/android/apps/circles/people/AudienceView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/circles/people/AudienceView;->a(Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 3

    const/16 v0, 0x3a9

    invoke-virtual {p0, v0}, Lh/fJ;->a(I)V

    iget-object v0, p0, Lh/fJ;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lh/fJ;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/fJ;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lh/fJ;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lh/fJ;->k:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a()V

    iget-object v0, p0, Lh/fJ;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lh/fJ;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lh/fJ;->A:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lh/fJ;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lh/fJ;->y:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lh/fJ;->z:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/fJ;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
