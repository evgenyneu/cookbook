module Logic
  class Search
    def self.do_search(cuisine:, ingredient:)
      query = Recipe.all
      query.where!(cuisine: cuisine) if cuisine.present?

      if ingredient.present?
        query = query.includes(:ingredients).where(
          ingredients: { name: ingredient }
        )
      end

      query
    end
  end
end