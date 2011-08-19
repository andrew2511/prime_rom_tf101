.class Lcom/google/android/apps/circles/people/b;
.super Lcom/google/android/apps/circles/people/a;


# instance fields
.field final synthetic b:Lcom/google/android/apps/circles/people/MultiLineLayout;


# direct methods
.method constructor <init>(Lcom/google/android/apps/circles/people/MultiLineLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/apps/circles/people/b;->b:Lcom/google/android/apps/circles/people/MultiLineLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/circles/people/a;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;Lcom/google/android/apps/circles/people/b;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
