defmodule PhoenixApiWeb.PostJSON do
  alias PhoenixApi.Posts.Post

  @doc """
  Renders a list of posts.
  """
  def index(%{posts: posts}) do
    %{posts: for(post <- posts, do: data(post))}
  end

  @doc """
  Renders a single post.
  """
  def show(%{post: post}) do
    %{post: data(post)}
  end

  defp data(%Post{} = post) do
    %{
      id: post.id,
      body: post.body,
      title: post.title,
      user_id: post.user_id
    }
  end
end
