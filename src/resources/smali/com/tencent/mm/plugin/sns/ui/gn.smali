.class final Lcom/tencent/mm/plugin/sns/ui/gn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bdi:Lcom/tencent/mm/plugin/sns/ui/gm;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/sns/ui/gm;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/tencent/mm/plugin/sns/ui/gn;->bdi:Lcom/tencent/mm/plugin/sns/ui/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/sns/ui/gn;->bdi:Lcom/tencent/mm/plugin/sns/ui/gm;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/sns/ui/gr;

    iput-object v0, v1, Lcom/tencent/mm/plugin/sns/ui/gm;->bdh:Lcom/tencent/mm/plugin/sns/ui/gr;

    .line 726
    iget-object v0, p0, Lcom/tencent/mm/plugin/sns/ui/gn;->bdi:Lcom/tencent/mm/plugin/sns/ui/gm;

    iget-object v0, v0, Lcom/tencent/mm/plugin/sns/ui/gm;->bdh:Lcom/tencent/mm/plugin/sns/ui/gr;

    iget v0, v0, Lcom/tencent/mm/plugin/sns/ui/gr;->aOL:I

    .line 727
    iget-object v1, p0, Lcom/tencent/mm/plugin/sns/ui/gn;->bdi:Lcom/tencent/mm/plugin/sns/ui/gm;

    iget-object v1, v1, Lcom/tencent/mm/plugin/sns/ui/gm;->bdh:Lcom/tencent/mm/plugin/sns/ui/gr;

    iget v1, v1, Lcom/tencent/mm/plugin/sns/ui/gr;->position:I

    .line 728
    iget-object v2, p0, Lcom/tencent/mm/plugin/sns/ui/gn;->bdi:Lcom/tencent/mm/plugin/sns/ui/gm;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/plugin/sns/ui/gm;->I(II)V

    goto :goto_0
.end method
