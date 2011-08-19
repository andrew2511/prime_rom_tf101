.class Lh/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lh/dW;


# direct methods
.method constructor <init>(Lh/dW;)V
    .locals 0

    iput-object p1, p0, Lh/aj;->a:Lh/dW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lh/dW;->h()V

    return-void
.end method
