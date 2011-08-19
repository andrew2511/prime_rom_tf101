.class Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TutorialAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private account:Landroid/accounts/Account;

.field private radioButton:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->this$1:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 320
    const/high16 v0, 0x7f0f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 321
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->account:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->account:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
